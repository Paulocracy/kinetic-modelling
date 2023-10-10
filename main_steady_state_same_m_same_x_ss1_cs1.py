import matplotlib
import random
import copy
from matplotlib.pyplot import title
import tellurium as te
import roadrunner as rr
from multiprocessing import cpu_count
from tellurium.tellurium import model
from typing import Any, Dict, List
from helper import ensure_folder_existence, get_main_statistics, json_write, json_zip_write, save_histogram, save_xy_point_plot


def reaction_report(reaction_id: str,
                    substrate_ids: List[str],
                    product_ids: List[str],
                    result_dict: Dict[str, Any]) -> str:
    report = ""

    # Select arrow
    if len(substrate_ids) > len(product_ids):
        arrow = "⇓"
        arrow = "⇓"
    elif len(substrate_ids) < len(product_ids):
        arrow = "⥥"
    else:
        arrow = "↓"

    # Print
    short_reaction_id = reaction_id.split("_")[1]
    species_name = reaction_id.split("_")[0]
    if not (("in" in reaction_id) or ("out" in reaction_id)):
        vplus = float(result_dict[reaction_id+"_vplus"])
        kappa = float(result_dict[reaction_id+"_kappa"])
        gamma = float(result_dict[reaction_id+"_gamma"])
        dG = float(result_dict[species_name+"_dG_"+short_reaction_id])
        dG0 = float(result_dict["dG0_"+short_reaction_id])
    else:
        vplus = ""
        kappa = ""
        gamma = ""
        dG = ""
        dG0 = ""

    km_ids = []
    if not (("in" in reaction_id) or ("out" in reaction_id)):
        for metabolite_id in product_ids+substrate_ids:
            short_metabolite_id = metabolite_id.split('_')[1]
            km_ids.append(f"global_k_{short_metabolite_id}_{short_reaction_id}")
    kms_string = ", ".join([km_id.replace("global_", "")+" "+result_dict[km_id] for km_id in km_ids])

    report += f"Reaction {reaction_id}\n"

    current_metabolite = 1
    for substrate_id in substrate_ids:
        if substrate_id != "":
            report += f"{substrate_id} [{result_dict[substrate_id]}]"
            if current_metabolite < len(substrate_ids):
                report += " + "
        current_metabolite += 1
    report += "\n"

    try:
        report += f" {arrow} kcat: "+result_dict["global_k_cat_"+short_reaction_id]+"\n"
    except KeyError:
        pass
    report += f" {arrow} kms: {kms_string}\n"
    report += f" {arrow} dG0: {dG0}\n"
    report += f" {arrow} dG': {dG}\n"
    report += f" {arrow} V⁺: {vplus}\n"
    report += f" {arrow} κ: {kappa}\n"
    report += f" {arrow} γ: {gamma}\n"
    try:
        report += f" {arrow} V⁺*κ*γ: {vplus*kappa*gamma}\n"
    except TypeError:
        pass
    report += f" {arrow} Flux: {result_dict[reaction_id]}\n"

    current_metabolite = 1
    for product_id in product_ids:
        if product_id != "":
            report += f"{product_id} [{result_dict[product_id]}]"
            if current_metabolite < len(product_ids):
                report += " + "
        current_metabolite += 1
    report += "\n"

    report += f"''''''''''''''\n"

    return report



def sample(original_model: rr.RoadRunner,
           selections: List[str],
           concentration_ids: List[str],
           sampled_values: Dict[str, float],
           max_scaling: float,
           min_flux: float,
           run_number: float=0):
    print("Run no. :", run_number)
    is_not_usable = True
    result_dict = {}
    while is_not_usable:
        model = copy.deepcopy(original_model)
        model.conservedMoietyAnalysis = True
        model.steadyStateSelections = selections
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
            values = model.getSteadyStateValues()
        except RuntimeError as e:
            print(f"Tellurium runtime error: {e}")
            continue
        try:
            for value_id, value in zip(model.steadyStateSelections, model.getSteadyStateValues()):
                result_dict[value_id] = value  # round(value, 6)
        except RuntimeError:
            continue

        if (result_dict["community_flux"] < min_flux) or (result_dict["single_flux"] < min_flux):
            result_dict = {}
        else:
            is_not_usable = False
            for concentration_id in concentration_ids:
                if result_dict[concentration_id] < 0.0:
                    result_dict = {}
                    is_not_usable = True
                    break


    result_dict_return = copy.deepcopy(result_dict)
    min_advantage = 0.0
    if (result_dict["relative_community_flux_advantage"] > min_advantage):
        for key in result_dict.keys():
            result_dict[key] = str(result_dict[key])
        extra_data = "========================================\n"
        extra_data += "~~~~~NEXT SOLUTION WITH COMMUNITY FLUX ADVANTAGE>"+str(min_advantage)+"~~~~~\n"
        extra_data += "========================================\n"
        extra_data += "Relative community flux advantage: " + result_dict["relative_community_flux_advantage"] + "\n"
        extra_data += "[CS2_X]/[CS1_X]: " + result_dict["CS2_to_CS1_X_ratio"] + "\n"
        extra_data += "\n"
        extra_data += "Single species:\n"
        extra_data += ">Flux: "+result_dict["single_flux"]+"\n"
        extra_data += ">MMDF: "+result_dict["s_mmdf"]+"\n"
        extra_data += ">Map:\n"
        extra_data += reaction_report("SS1_R1", ["Single_Sex"], ["SS1_S"], result_dict)
        extra_data += reaction_report("SS1_R2", ["SS1_S"], ["SS1_A", "SS1_X"], result_dict)
        extra_data += reaction_report("SS1_R3", ["SS1_A", "SS1_M"], ["SS1_B"], result_dict)
        extra_data += reaction_report("SS1_R4", ["SS1_B"], ["SS1_C"], result_dict)
        extra_data += reaction_report("SS1_R5", ["SS1_C", "SS1_X"], ["SS1_P"], result_dict)
        extra_data += reaction_report("SS1_R6", ["SS1_P"], ["Single_Pex"], result_dict)
        extra_data += "global_Im: "+result_dict["global_Im"]+"\n"
        extra_data += reaction_report("SS1_Min_", [""], ["SS1_M"], result_dict)
        extra_data += "global_k_M_Mout: "+result_dict["global_k_M_Mout"]+"\n"
        extra_data += reaction_report("SS1_Mout", ["SS1_M"], [""], result_dict)
        extra_data += "global_Ix_CS1_and_SS1: "+result_dict["global_Ix_CS1_and_SS1"]+"\n"
        extra_data += reaction_report("SS1_Xin", [""], ["SS1_X"], result_dict)
        extra_data += "global_k_X_Xout_CS1_and_SS1: "+result_dict["global_k_X_Xout_CS1_and_SS1"]+"\n"
        extra_data += reaction_report("SS1_Xout", ["SS1_X"], [""], result_dict)

        extra_data += "\n"
        extra_data += "Community:\n"
        extra_data += ">Flux: "+result_dict["community_flux"]+"\n"
        extra_data += ">MMDF: "+result_dict["c_mmdf"]+"\n"
        extra_data += ">Map:\n"
        extra_data += reaction_report("CS1_R1", ["Community_Sex"], ["CS1_S"], result_dict)
        extra_data += reaction_report("CS1_R2", ["CS1_S"], ["CS1_A", "CS1_X"], result_dict)
        extra_data += reaction_report("CS1_R3", ["CS1_A", "CS1_M"], ["CS1_B"], result_dict)
        extra_data += reaction_report("CS1_RTB", ["CS1_B"], ["Community_Bex"], result_dict)
        extra_data += reaction_report("CS2_RTB", ["Community_Bex"], ["CS2_B"], result_dict)
        extra_data += reaction_report("CS2_R4", ["CS2_B"], ["CS2_C"], result_dict)
        extra_data += reaction_report("CS2_R5", ["CS2_C", "CS2_X"], ["CS2_P"], result_dict)
        extra_data += reaction_report("CS2_R6", ["CS2_P"], ["Community_Pex"], result_dict)
        extra_data += "Im: "+result_dict["global_Im"]+"\n"
        extra_data += reaction_report("CS1_Min_", [""], ["CS1_M"], result_dict)
        extra_data += "k_M_Mout: "+result_dict["global_k_M_Mout"]+"\n"
        extra_data += reaction_report("CS1_Mout", ["CS1_M"], [""], result_dict)
        extra_data += "global_Ix_CS1_and_SS1: "+result_dict["global_Ix_CS1_and_SS1"]+"\n"
        extra_data += reaction_report("CS1_Xin", [""], ["CS1_X"], result_dict)
        extra_data += "global_k_X_Xout_CS1_and_SS1: "+result_dict["global_k_X_Xout_CS1_and_SS1"]+"\n"
        extra_data += reaction_report("CS1_Xout", ["CS1_X"], [""], result_dict)
        extra_data += "Ix_CS2: "+result_dict["global_Ix_CS2"]+"\n"
        extra_data += reaction_report("CS2_Xin", [""], ["CS2_X"], result_dict)
        extra_data += "k_X_Xout_CS2: "+result_dict["global_k_X_Xout_CS2"]+"\n"
        extra_data += reaction_report("CS2_Xout", ["CS2_X"], [""], result_dict)

        result_dict_return["extra_data"] = extra_data + "\n\n"
    else:
        result_dict_return["extra_data"] = ""

    return result_dict_return


model = te.loada("toymodel_expanded_with_Xin_and_Min_same_m_same_x_ss1_cs1.antimony")

with open("toymodel_same_m_same_x_ss1_cs1.cps", "w") as f:
    f.write(model.getSBML())
    print("Exported!")

import sys
# matplotlib.use("TkAgg")
# sselections = ["time", "SS1_S", "SS1_A", "CS1_A", "CS1_S", "SS1_X", "CS1_X", "CS2_X"]
# sselections = ["time", "CS1_R1", "CS1_R2", "CS1_R3", "CS2_R4", "CS2_R5", "CS2_R6"]
# simulation = model.simulate(0, 10, 1000, selections=sselections)
# model.plot(simulation)

concentration_ids = [
    "Community_Bex",
    "Community_Pex",
    "Single_Pex",
    "SS1_S",
    "SS1_A",
    "SS1_B",
    "SS1_C",
    "SS1_P",
    "SS1_X",
    "SS1_M",
    "CS1_S",
    "CS1_A",
    "CS1_B",
    "CS1_X",
    "CS1_M",
    "CS2_B",
    "CS2_C",
    "CS2_P",
    "CS2_X",
]
selections = concentration_ids + [
    "global_k_M_Mout",
    "global_Im",
    "global_Ix_CS1_and_SS1",
    "global_Ix_CS2",
    "global_k_X_Xout_CS1_and_SS1",
    "global_k_X_Xout_CS2",

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
    "SS1_Min_",
    "SS1_Mout",
    "CS1_Min_",
    "CS1_Mout",
    "SS1_Xin",
    "SS1_Xout",
    "CS1_Xin",
    "CS1_Xout",
    "CS2_Xin",
    "CS2_Xout",
    "dG0_R1",
    "dG0_R2",
    "dG0_R3",
    "dG0_R4",
    "dG0_R5",
    "dG0_R6",
    "dG0_RTB",
    "Single_Sex",
    "Community_Sex",
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
min_flux = 0.1
max_scaling = 100
num_runs = 5000
results: List[Dict[str, float]] = []
# matplotlib.use('TkAgg')
# results = [sample(model, selections, original_parameter_values, max_scaling, min_flux)]
##

for i in range(num_runs):
    print(i)
    new_result = sample(model,
        selections,
        concentration_ids,
        original_parameter_values,
        max_scaling,
        min_flux,
        i
    )
    if new_result != {}:
        results += [new_result]

    ##
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
        ("relative_community_mmdf_advantage", "CS2_to_CS1_X_ratio"),
        ("relative_community_mmdf_advantage", "CS1_to_CS2_X_ratio"),
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
    ]

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
