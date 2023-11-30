from helper import json_load

data = json_load("statistics_same_m_same_x_ss1_cs1/TEST.json")

index = 0
max_index = len(data["CS1_dG_RTB"])

c_cs1_xs = data["CS1_X"]
c_cs2_xs = data["CS2_X"]
single_fluxes = data["single_flux"]
community_fluxes = data["community_flux"]

num_community_advantages = 0
num_no_advantage_with_fitting_ratio = 0
report = ""
min_cs2_b_to_cs1_b_rel_dif_no_advantage = float("inf")
max_cs2_b_to_cs1_b_rel_dif_no_advantage = -float("inf")
min_cs2_b_to_cs1_b_rel_dif_advantage = float("inf")
max_cs2_b_to_cs1_b_rel_dif_advantage = -float("inf")
while index < max_index:
    c_cs1_x = c_cs1_xs[index]
    c_cs2_x = c_cs2_xs[index]
    cs2_x_to_cs1_x_ratio = c_cs2_x / c_cs1_x
    single_flux = single_fluxes[index]
    community_flux = community_fluxes[index]
    community_advantage = community_flux / single_flux

    cs2_b_to_cs1_b_rel_dif = data["SS1_M"][index] / data["CS1_M"][index]

    if (single_flux < 0.1) or (community_flux < 0.1):
        continue

    if (community_advantage > 1.0):
        num_community_advantages += 1
        min_cs2_b_to_cs1_b_rel_dif_advantage = min(min_cs2_b_to_cs1_b_rel_dif_advantage, cs2_b_to_cs1_b_rel_dif)
        max_cs2_b_to_cs1_b_rel_dif_advantage = max(max_cs2_b_to_cs1_b_rel_dif_advantage, cs2_b_to_cs1_b_rel_dif)

    if (community_advantage <= 0.35) and (cs2_x_to_cs1_x_ratio > 1.0):
        num_no_advantage_with_fitting_ratio += 1
        report += "\n" + "COMMUNITY ADVANTAGE: "+ str(community_advantage) + "\n"
        report += data["extra_data"][index]
        min_cs2_b_to_cs1_b_rel_dif_no_advantage = min(min_cs2_b_to_cs1_b_rel_dif_no_advantage, cs2_b_to_cs1_b_rel_dif)
        max_cs2_b_to_cs1_b_rel_dif_no_advantage = max(max_cs2_b_to_cs1_b_rel_dif_no_advantage, cs2_b_to_cs1_b_rel_dif)

    index += 1

print("num_community_advantages", num_community_advantages)
print("num_no_advantage_with_fitting_ratio", num_no_advantage_with_fitting_ratio)
print("min_cs2_b_to_cs1_b_rel_dif_advantage", min_cs2_b_to_cs1_b_rel_dif_advantage)
print("max_cs2_b_to_cs1_b_rel_dif_advantage", max_cs2_b_to_cs1_b_rel_dif_advantage)
print("min_cs2_b_to_cs1_b_rel_dif_no_advantage", min_cs2_b_to_cs1_b_rel_dif_no_advantage)
print("max_cs2_b_to_cs1_b_rel_dif_no_advantage", max_cs2_b_to_cs1_b_rel_dif_no_advantage)

with open("x.txt", "w", encoding="utf-8") as f:
    f.write(report)
