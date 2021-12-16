import matplotlib
import random
from matplotlib.pyplot import title
import ray
import tellurium as te
import roadrunner as rr
from multiprocessing import cpu_count
from tellurium.tellurium import model
from typing import Any, Dict, List
from helper import ensure_folder_existence, get_main_statistics, json_write, json_zip_write, save_histogram, save_xy_point_plot

@ray.remote
def sample(model: rr.RoadRunner,
           selections: List[str],
           sampled_values: Dict[str, float],
           max_scaling: float,
           min_flux: float):
    is_not_stable = True
    while is_not_stable:
        # Change values randomly
        for id in sampled_values.keys():
            original_value = sampled_values[id]
            to_maximize: bool = random.randint(0, 1) == 1
            if to_maximize:
                minimum = original_value
                maximum = original_value * max_scaling
            else:
                minimum = original_value / max_scaling
                maximum = original_value
            new_value = random.uniform(a=minimum, b=maximum)
            model[id] = new_value

        # Run simulation
        try:
            result = model.simulate(0, 500, 1000, selections=selections)
        except RuntimeError:
            print("Runtime error")
            continue

        # Convergence test
        preprevious_result = result[-3,:]
        previous_result = result[-2,:]
        current_result = result[-1,:]

        is_not_stable = False
        current_index = 1
        while current_index < len(preprevious_result):
            preprevious_value = round(preprevious_result[current_index], 10)
            previous_value = round(previous_result[current_index], 10)
            current_value = round(current_result[current_index], 10)

            if (preprevious_value != previous_value) or (previous_value != current_value):
                is_not_stable = True
                break
            current_index += 1

        if is_not_stable:
            continue

        last_result = result[-1,:]
        result_dict = {}
        current_index = 0
        while current_index < len(selections):
            result_dict[selections[current_index]] = last_result[current_index]
            current_index += 1

        if (result_dict["community_flux"] < min_flux) or (result_dict["single_flux"] < min_flux):
            result_dict = {}
            is_not_stable = True

    if (result_dict["relative_community_flux_advantage"] > 3):
        extra_data = "==="
        extra_data += "relative_community_flux_advantage" + str(result_dict["relative_community_flux_advantage"]) + "\n"
        extra_data += "A_X " + str(result_dict["A_X"]) + "\n"
        extra_data += "B_X " + str(result_dict["B_X"]) + "\n"
        extra_data += "C_X " + str(result_dict["C_X"]) + "\n"
        extra_data += "A_S " + str(result_dict["A_S"]) + "\n"
        extra_data += "A_A " + str(result_dict["A_A"]) + "\n"
        extra_data += "A_B " + str(result_dict["A_B"]) + "\n"
        extra_data += "B_B " + str(result_dict["B_B"]) + "\n"
        extra_data += "B_C " + str(result_dict["B_C"]) + "\n"
        extra_data += "B_P " + str(result_dict["B_P"]) + "\n"
        extra_data += "C_X " + str(result_dict["C_X"]) + "\n"
        extra_data += "community_B_to_community_A_metabolite_X_ratio " + str(result_dict["community_B_to_community_A_metabolite_X_ratio"]) + "\n"
        extra_data += "community_A_to_community_B_metabolite_X_ratio " + str(result_dict["community_A_to_community_B_metabolite_X_ratio"]) + "\n"
        extra_data += "community_flux " + str(result_dict["community_flux"]) + "\n"
        extra_data += "single_flux " + str(result_dict["single_flux"]) + "\n"
        result_dict["extra_data"] = extra_data + "\n"
    else:
        result_dict["extra_data"] = ""

    return result_dict



# matplotlib.use('TkAgg')
ray.init(num_cpus=cpu_count())

model = te.loada("toymodel.antimony")

with open("toymodel.cps", "w") as f:
    f.write(model.getSBML())

selections = [
    "time",
    "c_mmdf",
    "s_mmdf",
    "total_mmdf",
    "absolute_community_mmdf_advantage",
    "relative_community_mmdf_advantage",
    "community_A_to_single_metabolite_X_ratio",
    "community_B_to_single_metabolite_X_ratio",
    "community_B_to_community_A_metabolite_X_ratio",
    "community_A_to_community_B_metabolite_X_ratio",
    "absolute_community_flux_advantage",
    "relative_community_flux_advantage",
    "community_flux",
    "single_flux",
    "A_R4",
    "A_R5",
    "A_R6",
    "A_Pex_secretion",
    "B_R1",
    "B_R2",
    "B_R3",
    "B_Sex_uptake",
    "B_X",
    "A_X",
    "C_X",
    "A_S",
    "A_A",
    "A_B",
    "B_B",
    "B_C",
    "B_P",
    "A_dG_R1",
    "A_dG_R2",
    "A_dG_R3",
    "B_dG_R4",
    "B_dG_R5",
    "B_dG_R6",
    "C_dG_R1",
    "C_dG_R2",
    "C_dG_R3",
    "C_dG_R4",
    "C_dG_R5",
    "C_dG_R6",
    "is_community_advantageous",
    "is_community_advantageous_with_b_x_gt_a_x",
    "is_community_advantageous_with_a_x_gt_b_x",
    "is_community_advantageous_B",
    "is_community_advantageous_with_b_x_gt_a_x_B",
    "is_community_advantageous_with_a_x_gt_b_x_B",
    "community_advantage_with_b_x_gt_a_x",
    "community_advantage_with_b_x_gt_a_x_B",
    "community_advantage_with_a_x_gt_b_x",
    "community_advantage_with_a_x_gt_b_x_B",
] + [x for x in model.keys() if x.startswith("global_")]
string_keys: List[str] = [
    key for key in model.keys() if type(key) is str
]
sampled_parameter_ids = [
    key for key in string_keys if key.startswith("global_")
]
original_parameter_values: Dict[str, float] = {
    key: model[key] for key in sampled_parameter_ids
}
min_flux = 0.01
max_scaling = 1000
num_batches = 2
num_runs_per_batch = 10_000
results: List[Dict[str, float]] = []
for _ in range(num_batches):
    futures = [
        sample.remote(model, selections, original_parameter_values, max_scaling, min_flux)
        for i in range(num_runs_per_batch)
    ]
    new_results = ray.get(futures)
    results += new_results

random.seed(23432234)

results_list_dict: Dict[str, List[float]] = {}
for key in selections + ["extra_data"]:
    results_list_dict[key] = []
for result in results:
    for key in selections + ["extra_data"]:
        results_list_dict[key].append(result[key])

plotfolder = "./statistics/"
ensure_folder_existence(plotfolder)
# HISTOGRAMS
for key in selections:
    if key == "time":
        continue
    save_histogram(
        path=plotfolder+"histogram_"+key+".png",
        data=results_list_dict[key],
        title=key,
        xlabel=key,
        ylabel="Number of"
    )

# POINT PLOTS
pairs = [
    ("c_mmdf", "s_mmdf"),
    ("community_flux", "single_flux"),
    ("relative_community_mmdf_advantage", "relative_community_flux_advantage"),
    ("community_A_to_single_metabolite_X_ratio", "relative_community_flux_advantage"),
    ("community_B_to_single_metabolite_X_ratio", "relative_community_flux_advantage"),
    ("community_B_to_community_A_metabolite_X_ratio", "community_flux"),
    ("community_A_to_community_B_metabolite_X_ratio", "community_flux"),
    ("community_B_to_community_A_metabolite_X_ratio", "relative_community_flux_advantage"),
    ("community_A_to_community_B_metabolite_X_ratio", "relative_community_flux_advantage"),
    ("relative_community_flux_advantage", "community_B_to_community_A_metabolite_X_ratio"),
    ("relative_community_flux_advantage", "community_A_to_community_B_metabolite_X_ratio"),
    ("community_flux", "relative_community_flux_advantage"),
    ("single_flux", "relative_community_flux_advantage"),
] + [(x, "relative_community_flux_advantage") for x in selections if x.startswith("global_")]

for pair in pairs:
    save_xy_point_plot(
        path=plotfolder+"xy_"+pair[0]+"_VS_"+pair[1]+".png",
        xs=results_list_dict[pair[0]],
        ys=results_list_dict[pair[1]],
        title=pair[0]+" vs. "+pair[1],
        xlabel=pair[0],
        ylabel=pair[1],
    )

# TEXT STATISTICS
for key in selections:
    if key == "time":
        continue
    text_statistics = get_main_statistics(results_list_dict[key], key)
    with open(plotfolder+"statistics_"+key+".txt", "w") as f:
        f.write(text_statistics)

# TEXT REPORT
complete_extra_data = ""
for result in results_list_dict["extra_data"]:
    complete_extra_data += result
with open(plotfolder+"extra_data.txt", "w") as f:
    f.write(complete_extra_data)

json_zip_write(plotfolder+"TEST.json", results_list_dict)
