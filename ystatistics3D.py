from helper import json_load
from statistics import median, mean
import matplotlib.pyplot as plt
from numpy import log

target_folders = [
    "statistics_same_m/",
    "statistics_same_m_same_x_ss1_cs1/",
    # "statistics_same_m_same_x_ss1_cs1_cs2/",
]

fig = plt.figure() # plt.subplots(1, 2, figsize=(10, 4.75), dpi=400)
ax1 = fig.add_subplot(projection="3d")
ax2 = fig.add_subplot(projection="3d")

current_case = 1
for target_folder in target_folders:
    print(f"CASE {current_case}")
    data = json_load(target_folder+"TEST.json")

    min_X2_by_X3 = float("inf")
    max_X2_by_X3 = -float("inf")
    R2_gamma_ratios = []
    R5_gamma_ratios = []
    x_X_2s_advantage = []
    x_X_1s_advantage = []
    x_X_2s_no_advantage = []
    x_X_3s_advantage = []
    x_X_3s_no_advantage = []
    x_X_1s_no_advantage = []
    num_datapoints = len(data[list(data.keys())[0]])

    advantage_with_X3_gt_X2 = 0
    advantage_with_X2_gt_X3 = 0
    no_advantage_with_X3_gt_X2 = 0
    no_advantage_with_X2_gt_X3 = 0

    for datapoint in range(num_datapoints):
        is_community_advantegeous = data["is_community_advantageous"][datapoint]
        x_X_2 = data["CS1_X"][datapoint]
        x_X_3 = data["CS2_X"][datapoint]
        x_X_1 = data["SS1_X"][datapoint]
        if is_community_advantegeous <= 1e-6:
            x_X_2s_no_advantage.append(x_X_2)
            x_X_3s_no_advantage.append(x_X_3)
            x_X_1s_no_advantage.append(x_X_1)

            if x_X_3 > x_X_2:
                no_advantage_with_X3_gt_X2 += 1
            else:
                no_advantage_with_X2_gt_X3 += 1
            continue
        if x_X_3 > x_X_2:
            advantage_with_X3_gt_X2 += 1
        else:
            advantage_with_X2_gt_X3 += 1
        x_X_2s_advantage.append(x_X_2)
        x_X_3s_advantage.append(x_X_3)
        x_X_1s_advantage.append(x_X_1)
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

    #->Plot
    if current_case == 1:
        ax = ax1
        ax.set_title("A) Fall I", loc="left", fontweight="bold")
        label_without_advantage = "Einzellösung ohne Gemeinschaftsvorteil"
        label_with_advantage = "Einzellösung mit Gemeinschaftsvorteil"
    else:
        label_without_advantage = None
        label_with_advantage = None
        ax = ax2
        ax.set_title("B) Fall II", loc="left", fontweight="bold")

    all_x_X_1sX = [] # log(all_x_X_1s)
    for xx in range(len(x_X_2s_advantage)):
        all_x_X_1sX.append(x_X_3s_advantage[xx] / x_X_1s_advantage[xx])

    # ax.scatter3D(log(x_X_2s_no_advantage), log(x_X_3s_no_advantage), log(x_X_1s_no_advantage), c="orangered", marker=".", label=label_without_advantage)
    ax.scatter3D(log(x_X_2s_advantage), log(x_X_3s_advantage), log(x_X_1s_advantage), c="blue", marker=".", label=label_with_advantage)
    x1, y1 = -100, -100
    x2, y2 = 100, 100
    z1, z2 = 0, 0

    # Plot the line
    # ax.plot3D([x1, x2, z1], [y1, y2, z2], marker='o', linestyle='-', c="black")
    ax.set_xlabel(r'ln([$X_2$])')
    ax.set_ylabel(r'ln([$X_3$])')
    ax.set_zlabel(r'ln([$X_1$])')

    all_x_X_2s = x_X_2s_no_advantage + x_X_2s_advantage
    all_x_X_2s = log(all_x_X_2s)
    all_x_X_3s = x_X_3s_no_advantage + x_X_3s_advantage
    all_x_X_3s = log(all_x_X_3s)
    all_x_X_1s = x_X_1s_no_advantage + x_X_1s_advantage

    ax.set_xlim(min(all_x_X_2s), max(all_x_X_2s))
    ax.set_ylim(min(all_x_X_3s), max(all_x_X_3s))
    ax.set_zlim(min(all_x_X_1sX), max(all_x_X_1sX))
    print("MINMINMIN", min(all_x_X_1sX))
    print("MINMINMIN", max(all_x_X_1sX))

    current_case += 1

lines1, labels1 = ax1.get_legend_handles_labels()
lines2, labels2 = ax2.get_legend_handles_labels()
lines = lines1 + lines2
labels = labels1 + labels2
ax1.legend(lines, labels, loc='upper center', bbox_to_anchor=(1.1, 1.25))
plt.tight_layout()
plt.subplots_adjust(wspace=0.19)

plt.show()
plt.savefig("x_statistics.png")
