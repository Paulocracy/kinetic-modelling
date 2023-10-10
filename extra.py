import statistics
from helper import json_zip_load, save_boxplot
dictionary = json_zip_load("./statistics_same_m/TEST.json")

rel_flux_adv = dictionary["relative_community_flux_advantage"]
abs_flux_adv = dictionary["absolute_community_flux_advantage"]
rel_mmdf_adv = dictionary["relative_community_mmdf_advantage"]
abs_mmdf_adv = dictionary["absolute_community_mmdf_advantage"]
xratio = dictionary["community_B_to_community_A_metabolite_X_ratio"]

advantages_gt_1 = []
advantages_lt_1 = []
for index in range(len(rel_flux_adv)):
    if rel_flux_adv[index] <= 1.25:
        continue

    if xratio[index] > 1.0:
        advantages_gt_1.append(rel_flux_adv[index])
    else:
        advantages_lt_1.append(rel_flux_adv[index])

print(len(advantages_gt_1))
print(sum(advantages_gt_1) / len(advantages_gt_1))
print(statistics.median(advantages_gt_1))
print(len(advantages_lt_1))
print(sum(advantages_lt_1) / len(advantages_lt_1))
print(statistics.median(advantages_lt_1))
