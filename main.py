import matplotlib
import random
import copy
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
        except RuntimeError as e:
            print(f"Tellurium runtime error: {e}")
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

    result_dict_return = copy.deepcopy(result_dict)
    min_advantage = 1.000001
    if (result_dict["relative_community_flux_advantage"] > min_advantage):
        for key in result_dict.keys():
            result_dict[key] = str(result_dict[key])
        extra_data = "========================================\n"
        extra_data = "========================================\n"
        extra_data = "========================================\n"
        extra_data += "~~~~~NEXT SOLUTION WITH COMMUNITY FLUX ADVANTAGE>"+str(min_advantage)+"~~~~~\n"
        extra_data += "========================================\n"
        extra_data += "========================================\n"
        extra_data += "========================================\n"
        extra_data += "Relative community flux advantage: " + result_dict["relative_community_flux_advantage"] + "\n"
        extra_data += "[SS2_X]/[SS1_X]: " + result_dict["CS2_to_CS1_X_ratio"] + "\n"
        extra_data += "\n"
        extra_data += "Single species:\n"
        extra_data += ">Flux: "+result_dict["single_flux"]+"\n"
        extra_data += ">MMDF: "+result_dict["s_mmdf"]+"\n"
        extra_data += ">Map:"
        extra_data += " Sex ["+result_dict["Single_Sex"]+"]\n"
        extra_data += " ↓ R1, dG0: "+result_dict["dG0_R1"]+", kcat: "+result_dict["global_k_cat_R1"]+", k_Sex: "+result_dict["global_k_Sex_R1"]+", k_S: "+result_dict["global_k_S_R1"]+"\n"
        extra_data += " ↓ dG': "+result_dict["SS1_dG_R1"]+"\n"
        extra_data += " ↓ V⁺: "+result_dict["SS1_R1_vplus"]+"\n"
        extra_data += " ↓ κ: "+result_dict["SS1_R1_kappa"]+"\n"
        extra_data += " ↓ γ: "+result_dict["SS1_R1_gamma"]+"\n"
        extra_data += " ↓ V⁺*κ*γ: "+str(float(result_dict["SS1_R1_vplus"]) * float(result_dict["SS1_R1_gamma"]) * float(result_dict["SS1_R1_kappa"]))+"\n"
        extra_data += " SS1_S ["+result_dict["SS1_S"]+"]\n"
        extra_data += " ⥥ R2, dG0: "+result_dict["dG0_R2"]+", kcat: "+result_dict["global_k_cat_R2"]+", k_S: "+result_dict["global_k_S_R2"]+", k_A "+result_dict["global_k_A_R2"]+", k_X: "+result_dict["global_k_X_R2"]+"\n"
        extra_data += " ⥥ dG': "+result_dict["SS1_dG_R2"]+"\n"
        extra_data += " ⥥ V⁺: "+result_dict["SS1_R2_vplus"]+"\n"
        extra_data += " ⥥ κ: "+result_dict["SS1_R2_kappa"]+"\n"
        extra_data += " ⥥ γ: "+result_dict["SS1_R2_gamma"]+"\n"
        extra_data += " ⥥ V⁺*κ*γ: "+str(float(result_dict["SS1_R2_vplus"]) * float(result_dict["SS1_R2_kappa"]) * float(result_dict["SS1_R2_gamma"]))+"\n"
        extra_data += " SS1_A ["+result_dict["SS1_A"]+"] + SS1_X ["+result_dict["SS1_X"]+"]\n"
        extra_data += " ⇓ R3, dG0: "+result_dict["dG0_R3"]+", kcat: "+result_dict["global_k_cat_R3"]+", k_A: "+result_dict["global_k_A_R3"]+", k_X: "+result_dict["global_k_X_R3"]+", k_B "+result_dict["global_k_B_R3"]+"\n"
        extra_data += " ⇓ R3, dG0: -5\n"
        extra_data += " ⇓ dG': "+result_dict["SS1_dG_R3"]+"\n"
        extra_data += " ⇓ V⁺: "+result_dict["SS1_R3_vplus"]+"\n"
        extra_data += " ⇓ κ: "+result_dict["SS1_R3_kappa"]+"\n"
        extra_data += " ⇓ γ: "+result_dict["SS1_R3_gamma"]+"\n"
        extra_data += " ⇓ V⁺*κ*γ: "+str(float(result_dict["SS1_R3_vplus"]) * float(result_dict["SS1_R3_kappa"]) * float(result_dict["SS1_R3_gamma"]))+"\n"
        extra_data += " SS1_B ["+result_dict["SS1_B"]+"]\n"
        extra_data += " ⥥ R4, dG0: "+result_dict["dG0_R4"]+", kcat: "+result_dict["global_k_cat_R4"]+", k_B: "+result_dict["global_k_B_R4"]+", k_C: "+result_dict["global_k_C_R4"]+", k_X "+result_dict["global_k_X_R4"]+"\n"
        extra_data += " ⥥ dG': "+result_dict["SS1_dG_R4"]+"\n"
        extra_data += " ⥥ V⁺: "+result_dict["SS1_R4_vplus"]+"\n"
        extra_data += " ⥥ κ: "+result_dict["SS1_R4_kappa"]+"\n"
        extra_data += " ⥥ γ: "+result_dict["SS1_R4_gamma"]+"\n"
        extra_data += " ⥥ V⁺*κ*γ: "+str(float(result_dict["SS1_R4_vplus"]) * float(result_dict["SS1_R4_kappa"]) * float(result_dict["SS1_R4_gamma"]))+"\n"
        extra_data += " SS1_C ["+result_dict["SS1_C"]+"] + SS1_X ["+result_dict["SS1_X"]+"]\n"
        extra_data += " ⇓ R5, dG0: "+result_dict["dG0_R5"]+", kcat: "+result_dict["global_k_cat_R5"]+", k_C: "+result_dict["global_k_C_R5"]+", k_X: "+result_dict["global_k_X_R5"]+", k_P "+result_dict["global_k_P_R5"]+"\n"
        extra_data += " ⇓ dG': "+result_dict["SS1_dG_R5"]+"\n"
        extra_data += " ⇓ V⁺: "+result_dict["SS1_R5_vplus"]+"\n"
        extra_data += " ⇓ κ: "+result_dict["SS1_R5_kappa"]+"\n"
        extra_data += " ⇓ γ: "+result_dict["SS1_R5_gamma"]+"\n"
        extra_data += " ⇓ V⁺*κ*γ: "+str(float(result_dict["SS1_R5_vplus"]) * float(result_dict["SS1_R5_kappa"]) * float(result_dict["SS1_R5_gamma"]))+"\n"
        extra_data += " SS1_P ["+result_dict["SS1_P"]+"]\n"
        extra_data += " ↓ R6, dG0: "+result_dict["dG0_R6"]+", kcat: "+result_dict["global_k_cat_R6"]+", k_P: "+result_dict["global_k_P_R6"]+", k_Pex: "+result_dict["global_k_Pex_R6"]+"\n"
        extra_data += " ↓ dG': "+result_dict["SS1_dG_R6"]+"\n"
        extra_data += " ↓ V⁺: "+result_dict["SS1_R6_vplus"]+"\n"
        extra_data += " ↓ κ: "+result_dict["SS1_R6_kappa"]+"\n"
        extra_data += " ↓ γ: "+result_dict["SS1_R6_gamma"]+"\n"
        extra_data += " ↓ V⁺*κ*γ: "+str(float(result_dict["SS1_R6_vplus"]) * float(result_dict["SS1_R6_kappa"]) * float(result_dict["SS1_R6_gamma"]))+"\n"
        extra_data += " Pex ["+result_dict["Single_Pex"]+"]\n"
        extra_data += "\n"
        extra_data += "Community:\n"
        extra_data += ">Flux: "+result_dict["community_flux"]+"\n"
        extra_data += ">MMDF: "+result_dict["c_mmdf"]+"\n"
        extra_data += ">Map:"
        extra_data += " Sex ["+result_dict["Community_Sex"]+"]\n"
        extra_data += " ↓ R1, dG0: "+result_dict["dG0_R1"]+", kcat: "+result_dict["global_k_cat_R1"]+", k_Sex: "+result_dict["global_k_Sex_R1"]+", k_S: "+result_dict["global_k_S_R1"]+"\n"
        extra_data += " ↓ dG': "+result_dict["CS1_dG_R1"]+"\n"
        extra_data += " ↓ V⁺: "+result_dict["CS1_R1_vplus"]+"\n"
        extra_data += " ↓ κ: "+result_dict["CS1_R1_kappa"]+"\n"
        extra_data += " ↓ γ: "+result_dict["CS1_R1_gamma"]+"\n"
        extra_data += " ↓ V⁺*κ*γ: "+str(float(result_dict["CS1_R1_vplus"]) * float(result_dict["CS1_R1_kappa"]) * float(result_dict["CS1_R1_gamma"]))+"\n"
        extra_data += " CS1_S ["+result_dict["CS1_S"]+"]\n"
        extra_data += " ⥥ R2, dG0: "+result_dict["dG0_R2"]+", kcat: "+result_dict["global_k_cat_R2"]+", k_S: "+result_dict["global_k_S_R2"]+", k_A "+result_dict["global_k_A_R2"]+", k_X: "+result_dict["global_k_X_R2"]+"\n"
        extra_data += " ⥥ dG': "+result_dict["CS1_dG_R2"]+"\n"
        extra_data += " ⥥ V⁺: "+result_dict["CS1_R2_vplus"]+"\n"
        extra_data += " ⥥ κ: "+result_dict["CS1_R2_kappa"]+"\n"
        extra_data += " ⥥ γ: "+result_dict["CS1_R2_gamma"]+"\n"
        extra_data += " ⥥ V⁺*κ*γ: "+str(float(result_dict["CS1_R2_vplus"]) * float(result_dict["CS1_R2_kappa"]) * float(result_dict["CS1_R2_gamma"]))+"\n"
        extra_data += " CS1_A ["+result_dict["CS1_A"]+"] + CS1_X ["+result_dict["CS1_X"]+"]\n"
        extra_data += " ⇓ R3, dG0: "+result_dict["dG0_R3"]+", kcat: "+result_dict["global_k_cat_R3"]+", k_A: "+result_dict["global_k_A_R3"]+", k_X: "+result_dict["global_k_X_R3"]+", k_B "+result_dict["global_k_B_R3"]+"\n"
        extra_data += " ⇓ dG': "+result_dict["CS1_dG_R3"]+"\n"
        extra_data += " ⇓ V⁺: "+result_dict["CS1_R3_vplus"]+"\n"
        extra_data += " ⇓ κ: "+result_dict["CS1_R3_kappa"]+"\n"
        extra_data += " ⇓ γ: "+result_dict["CS1_R3_gamma"]+"\n"
        extra_data += " ⇓ V⁺*κ*γ: "+str(float(result_dict["CS1_R3_vplus"]) * float(result_dict["CS1_R3_kappa"]) * float(result_dict["CS1_R3_gamma"]))+"\n"
        extra_data += " CS1_B ["+result_dict["CS1_B"]+"]\n"
        extra_data += " ↓ CS1_RTB, dG0: "+result_dict["dG0_RTB"]+", kcat: "+result_dict["global_k_cat_RTB"]+", k_B: "+result_dict["global_k_B_RTB"]+", k_Bex: "+result_dict["global_k_Bex_RTB"]+"\n"
        extra_data += " ↓ dG': "+result_dict["CS1_dG_RTB"]+"\n"
        extra_data += " ↓ V⁺: "+result_dict["CS1_RTB_vplus"]+"\n"
        extra_data += " ↓ κ: "+result_dict["CS1_RTB_kappa"]+"\n"
        extra_data += " ↓ γ: "+result_dict["CS1_RTB_gamma"]+"\n"
        extra_data += " ↓ V⁺*κ*γ: "+str(float(result_dict["CS1_RTB_vplus"]) * float(result_dict["CS1_RTB_kappa"]) * float(result_dict["CS1_RTB_gamma"]))+"\n"
        extra_data += " Bex ["+result_dict["Community_Bex"]+"]\n"
        extra_data += " ↓ CS2_RTB, dG0: "+result_dict["dG0_RTB"]+", kcat: "+result_dict["global_k_cat_RTB"]+", k_B: "+result_dict["global_k_B_RTB"]+", k_Bex: "+result_dict["global_k_Bex_RTB"]+"\n"
        extra_data += " ↓ dG': "+result_dict["CS1_dG_RTB"]+"\n"
        extra_data += " ↓ V⁺: "+result_dict["CS2_RTB_vplus"]+"\n"
        extra_data += " ↓ κ: "+result_dict["CS2_RTB_kappa"]+"\n"
        extra_data += " ↓ γ: "+result_dict["CS2_RTB_gamma"]+"\n"
        extra_data += " ↓ V⁺*κ*γ: "+str(float(result_dict["CS2_RTB_vplus"]) * float(result_dict["CS2_RTB_kappa"]) * float(result_dict["CS2_RTB_gamma"]))+"\n"
        extra_data += " CS2_B ["+result_dict["CS2_B"]+"]\n"
        extra_data += " ⥥ R4, dG0: "+result_dict["dG0_R4"]+", kcat: "+result_dict["global_k_cat_R4"]+", k_B: "+result_dict["global_k_B_R4"]+", k_C: "+result_dict["global_k_C_R4"]+", k_X "+result_dict["global_k_X_R4"]+"\n"
        extra_data += " ⇓ dG': "+result_dict["CS2_dG_R4"]+"\n"
        extra_data += " ⥥ V⁺: "+result_dict["CS2_R4_vplus"]+"\n"
        extra_data += " ⥥ κ: "+result_dict["CS2_R4_kappa"]+"\n"
        extra_data += " ⥥ γ: "+result_dict["CS2_R4_gamma"]+"\n"
        extra_data += " ⥥ V⁺*κ*γ: "+str(float(result_dict["CS2_R4_vplus"]) * float(result_dict["CS2_R4_kappa"]) * float(result_dict["CS2_R4_gamma"]))+"\n"
        extra_data += " CS2_C ["+result_dict["CS2_C"]+"] + CS2_X ["+result_dict["CS2_X"]+"]\n"
        extra_data += " ⇓ R5, dG0: "+result_dict["dG0_R5"]+", kcat: "+result_dict["global_k_cat_R5"]+", k_C: "+result_dict["global_k_C_R5"]+", k_X: "+result_dict["global_k_X_R5"]+", k_P "+result_dict["global_k_P_R5"]+"\n"
        extra_data += " ⇓ dG': "+result_dict["CS2_dG_R5"]+"\n"
        extra_data += " ⇓ V⁺: "+result_dict["CS2_R5_vplus"]+"\n"
        extra_data += " ⇓ κ: "+result_dict["CS2_R5_kappa"]+"\n"
        extra_data += " ⇓ γ: "+result_dict["CS2_R5_gamma"]+"\n"
        extra_data += " ⇓ V⁺*κ*γ: "+str(float(result_dict["CS2_R5_vplus"]) * float(result_dict["CS2_R5_kappa"]) * float(result_dict["CS2_R5_gamma"]))+"\n"
        extra_data += " CS2_P ["+result_dict["CS2_P"]+"]\n"
        extra_data += " ↓ R6, dG0: "+result_dict["dG0_R6"]+", kcat: "+result_dict["global_k_cat_R6"]+", k_P: "+result_dict["global_k_P_R6"]+", k_Pex: "+result_dict["global_k_Pex_R6"]+"\n"
        extra_data += " ↓ dG': "+result_dict["CS2_dG_R6"]+"\n"
        extra_data += " ↓ V⁺: "+result_dict["CS2_R6_vplus"]+"\n"
        extra_data += " ↓ κ: "+result_dict["CS2_R6_kappa"]+"\n"
        extra_data += " ↓ γ: "+result_dict["CS2_R6_gamma"]+"\n"
        extra_data += " ↓ V⁺*κ*γ: "+str(float(result_dict["CS2_R6_vplus"]) * float(result_dict["CS2_R6_kappa"]) * float(result_dict["CS2_R6_gamma"]))+"\n"
        extra_data += " Pex ["+result_dict["Community_Pex"]+"]\n"

        result_dict_return["extra_data"] = extra_data + "\n\n"
    else:
        result_dict_return["extra_data"] = ""

    return result_dict_return


model = te.loada("toymodel.antimony")

with open("toymodel.cps", "w") as f:
    f.write(model.getSBML())
    print("Exported!")

# import sys
# model.simulate(0, 10, 100)
# sys.exit(0)

selections = [
    "time",
    "c_mmdf",
    "s_mmdf",
    "total_mmdf",
    "absolute_community_mmdf_advantage",
    "relative_community_mmdf_advantage",
    "CS1_to_CS2_X_ratio",
    "CS2_to_CS1_X_ratio",
    "CS1_to_SS1_X_ratio",
    "CS2_to_SS1_X_ratio",
    "absolute_community_flux_advantage",
    "relative_community_flux_advantage",
    "community_flux",
    "single_flux",
    "CS1_Sex_uptake",
    "CS1_R1",
    "CS1_R2",
    "CS1_R3",
    "CS1_RTB",
    "CS2_RTB",
    "CS2_R4",
    "CS2_R5",
    "CS2_R6",
    "CS2_Pex_secretion",
    "SS1_Sex_uptake",
    "SS1_R1",
    "SS1_R2",
    "SS1_R3",
    "SS1_R4",
    "SS1_R5",
    "SS1_R6",
    "SS1_Pex_secretion",
    "CS2_X",
    "CS1_X",
    "SS1_X",
    "CS1_S",
    "CS1_A",
    "CS1_B",
    "Community_Bex",
    "CS2_B",
    "CS2_C",
    "CS2_P",
    "SS1_S",
    "SS1_A",
    "SS1_B",
    "SS1_C",
    "SS1_P",
    "CS1_dG_R1",
    "CS1_dG_R2",
    "CS1_dG_R3",
    "CS1_dG_RTB",
    "CS2_dG_RTB",
    "CS2_dG_R4",
    "CS2_dG_R5",
    "CS2_dG_R6",
    "SS1_dG_R1",
    "SS1_dG_R2",
    "SS1_dG_R3",
    "SS1_dG_R4",
    "SS1_dG_R5",
    "SS1_dG_R6",
    "is_community_advantageous",
    "is_community_advantageous_with_CS2_X_gt_CS1_X",
    "is_community_advantageous_with_CS1_X_gt_CS2_X",
    "community_advantage_with_CS2_X_gt_CS1_X",
    "community_advantage_with_CS1_X_gt_CS2_X",
    "Community_Pex",
    "Single_Pex",
    "CS1_R1_vplus",
    "CS1_R2_vplus",
    "CS1_R3_vplus",
    "CS1_RTB_vplus",
    "CS2_RTB_vplus",
    "CS2_R4_vplus",
    "CS2_R5_vplus",
    "CS2_R6_vplus",
    "SS1_R1_vplus",
    "SS1_R2_vplus",
    "SS1_R3_vplus",
    "SS1_R4_vplus",
    "SS1_R5_vplus",
    "SS1_R6_vplus",
    "CS1_R1_kappa",
    "CS1_R2_kappa",
    "CS1_R3_kappa",
    "CS1_RTB_kappa",
    "CS2_RTB_kappa",
    "CS2_R4_kappa",
    "CS2_R5_kappa",
    "CS2_R6_kappa",
    "SS1_R1_kappa",
    "SS1_R2_kappa",
    "SS1_R3_kappa",
    "SS1_R4_kappa",
    "SS1_R5_kappa",
    "SS1_R6_kappa",
    "CS1_R1_gamma",
    "CS1_R2_gamma",
    "CS1_R3_gamma",
    "CS1_RTB_gamma",
    "CS2_RTB_gamma",
    "CS2_R4_gamma",
    "CS2_R5_gamma",
    "CS2_R6_gamma",
    "SS1_R1_gamma",
    "SS1_R2_gamma",
    "SS1_R3_gamma",
    "SS1_R4_gamma",
    "SS1_R5_gamma",
    "SS1_R6_gamma",
    "dG0_R1",
    "dG0_R2",
    "dG0_R3",
    "dG0_R4",
    "dG0_R5",
    "dG0_R6",
    "dG0_RTB",
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
min_flux = 1.0
max_scaling = 1000
num_batches = 1
num_runs_per_batch = 10_000
results: List[Dict[str, float]] = []
# matplotlib.use('TkAgg')
ray.init(num_cpus=cpu_count())
for _ in range(num_batches):
    futures = [
        sample.remote(model, selections, original_parameter_values, max_scaling, min_flux)
        for i in range(num_runs_per_batch)
    ]
    new_results = ray.get(futures)
    results += new_results

results_list_dict: Dict[str, List[float]] = {}
for key in selections + ["extra_data"]:
    results_list_dict[key] = []
for result in results:
    for key in selections + ["extra_data"]:
        results_list_dict[key].append(result[key])

plotfolder = "./statistics/"
ensure_folder_existence(plotfolder)
# HISTOGRAMS
# for key in selections:
#     if key == "time":
#         continue
#     save_histogram(
#         path=plotfolder+"histogram_"+key+".png",
#         data=results_list_dict[key],
#         title=key,
#         xlabel=key,
#         ylabel="Number of"
#     )

# POINT PLOTS
pairs = [
    ("c_mmdf", "s_mmdf"),
    ("community_flux", "single_flux"),
    ("relative_community_mmdf_advantage", "relative_community_flux_advantage"),
    ("CS1_to_CS2_X_ratio", "community_flux"),
    ("CS2_to_CS1_X_ratio", "community_flux"),
    ("CS1_to_SS1_X_ratio", "relative_community_flux_advantage"),
    ("CS2_to_SS1_X_ratio", "relative_community_flux_advantage"),
    ("CS1_to_CS2_X_ratio", "relative_community_flux_advantage"),
    ("CS2_to_CS1_X_ratio", "relative_community_flux_advantage"),
    ("relative_community_flux_advantage", "CS1_to_CS2_X_ratio"),
    ("relative_community_flux_advantage", "CS2_to_CS1_X_ratio"),
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
with open(plotfolder+"extra_data.txt", "w", encoding="utf-8") as f:
    f.write(complete_extra_data)

json_zip_write(plotfolder+"TEST.json", results_list_dict)
