from helper import json_zip_load
dictionary = json_zip_load("./statistics_20000/TEST.json")

rel_flux_adv = dictionary["relative_community_flux_advantage"]
abs_flux_adv = dictionary["absolute_community_flux_advantage"]
rel_mmdf_adv = dictionary["relative_community_mmdf_advantage"]
abs_mmdf_adv = dictionary["absolute_community_mmdf_advantage"]
xratio = dictionary["community_B_to_community_A_metabolite_X_ratio"]

advantages_sum_xratio_gt_1 = 0.0
advantages_num_xratio_gt_1 = 0
advantages_sum_xratio_lt_1 = 0.0
advantages_num_xratio_lt_1 = 0
for index in range(len(rel_flux_adv)):
    if rel_flux_adv[index] <= 1:
        continue

    if xratio[index] > 1.0:
        advantages_sum_xratio_gt_1 += abs_flux_adv[index]
        advantages_num_xratio_gt_1 += 1
    else:
        advantages_sum_xratio_lt_1 += abs_flux_adv[index]
        advantages_num_xratio_lt_1 += 1

print(advantages_num_xratio_gt_1)
print(advantages_sum_xratio_gt_1 / advantages_num_xratio_gt_1)
print(advantages_num_xratio_lt_1)
print(advantages_sum_xratio_lt_1 / advantages_num_xratio_lt_1)
