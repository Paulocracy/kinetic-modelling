from helper import json_load
from statistics import median, mean
import matplotlib.pyplot as plt
from numpy import log

target_folders = [
    "statistics_same_m_same_x_ss1_cs1/",
    # "statistics_same_m_same_x_ss1_cs1_cs2/",
]

fig, ax1 = plt.subplots(1, 1, figsize=(6, 4.75), dpi=400)

current_case = 1
for target_folder in target_folders:
    print(f"CASE {current_case}")
    data = json_load(target_folder+"TEST.json")

    min_X2_by_X3 = float("inf")
    max_X2_by_X3 = -float("inf")
    R2_gamma_ratios = []
    R5_gamma_ratios = []
    x_X_1s_advantage = []
    X_1_to_X2_ratios_advantage = []
    x_X_2s_advantage = []
    x_X_2s_no_advantage = []
    x_X_3s_advantage = []
    x_X_3s_no_advantage = []
    num_datapoints = len(data[list(data.keys())[0]])

    advantage_with_X3_gt_X2 = 0
    advantage_with_X2_gt_X3 = 0
    no_advantage_with_X3_gt_X2 = 0
    no_advantage_with_X2_gt_X3 = 0

    for datapoint in range(num_datapoints):
        is_community_advantegeous = data["is_community_advantageous"][datapoint]
        x_X_1 = data["SS1_X"][datapoint]
        x_X_2 = data["CS1_X"][datapoint]
        x_X_3 = data["CS2_X"][datapoint]
        if is_community_advantegeous <= 1e-6:
            x_X_2s_no_advantage.append(x_X_2)
            x_X_3s_no_advantage.append(x_X_3)

            if x_X_3 > x_X_2:
                no_advantage_with_X3_gt_X2 += 1
            else:
                no_advantage_with_X2_gt_X3 += 1
            continue
        if x_X_3 > x_X_2:
            advantage_with_X3_gt_X2 += 1
        else:
            advantage_with_X2_gt_X3 += 1
        x_X_1s_advantage.append(x_X_1)
        x_X_2s_advantage.append(x_X_2)
        x_X_3s_advantage.append(x_X_3)
        X_1_to_X2_ratios_advantage.append(x_X_1/x_X_3)
        ratio = x_X_2/x_X_3
        min_X2_by_X3 = min(min_X2_by_X3, ratio)
        max_X2_by_X3 = max(max_X2_by_X3, ratio)

        gamma_R2_1 = data["SS1_R2_gamma"][datapoint] #*data["SS1_R2_kappa"][datapoint]
        gamma_R2_2 = data["CS1_R2_gamma"][datapoint] #*data["CS1_R2_kappa"][datapoint]
        gamma_R5_1 = data["SS1_R5_gamma"][datapoint] #*data["SS1_R5_kappa"][datapoint]
        gamma_R5_3 = data["CS2_R5_gamma"][datapoint] #*data["CS2_R5_kappa"][datapoint]

        R2_gamma_ratios.append(gamma_R2_1/gamma_R2_2)
        R5_gamma_ratios.append(gamma_R5_1/gamma_R5_3)

    print("Min:", min_X2_by_X3)
    print("Max:", max_X2_by_X3)
    print("MIN:", min(R2_gamma_ratios), min(R5_gamma_ratios))
    print("MAX:", max(R2_gamma_ratios), max(R5_gamma_ratios))
    print("MEAN:", mean(R2_gamma_ratios), mean(R5_gamma_ratios))
    print("MEDIAN:", median(R2_gamma_ratios), median(R5_gamma_ratios))
    print("no_advantage_with_X3_gt_X2", no_advantage_with_X3_gt_X2)
    print("no_advantage_with_X2_gt_X3", no_advantage_with_X2_gt_X3)
    print("advantage_with_X3_gt_X2", advantage_with_X3_gt_X2)
    print("advantage_with_X2_gt_X3", advantage_with_X2_gt_X3)
    print("min(X_1_to_X2_ratios_advantage)", min(X_1_to_X2_ratios_advantage))
    print("max(X_1_to_X2_ratios_advantage)", max(X_1_to_X2_ratios_advantage))

    #->Plot
    ax = ax1
    label_without_advantage = "Einzellösung ohne Gemeinschaftsvorteil"
    label_with_advantage = "Einzellösung mit Gemeinschaftsvorteil"

    ax.scatter(
        log(x_X_2s_no_advantage), log(x_X_3s_no_advantage),
        c="orangered", marker=".", label=label_without_advantage
    )
    ax.scatter(
        log(x_X_2s_advantage), log(x_X_3s_advantage),
        c="blue", marker=".", label=label_with_advantage
    )
    x1, y1 = -100, -100
    x2, y2 = 100, 100

    # Plot the line
    ax.plot([x1, x2], [y1, y2], marker='o', linestyle='-', c="black")
    ax.set_xlabel(r'ln([$X_1$])')
    ax.set_ylabel(r'ln([$X_2$])')

    all_x_X_2s = x_X_2s_no_advantage + x_X_2s_advantage
    all_x_X_2s = log(all_x_X_2s)
    all_x_X_3s = x_X_3s_no_advantage + x_X_3s_advantage
    all_x_X_3s = log(all_x_X_3s)

    ax.set_xlim(min(all_x_X_2s), max(all_x_X_2s))
    ax.set_ylim(min(all_x_X_3s), max(all_x_X_3s))

    current_case += 1

lines1, labels1 = ax1.get_legend_handles_labels()
lines = lines1
ax1.legend(lines, labels1, loc='lower right')
plt.tight_layout()
plt.subplots_adjust(wspace=0.19)

plt.savefig("x_statistics.png")
