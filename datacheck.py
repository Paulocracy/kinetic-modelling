import statistics
from math import log
from helper import json_load

STANDARD_R = 8.314e-3  # kJ⋅K⁻1⋅mol⁻1 (standard value is in J⋅K⁻1⋅mol⁻1)
STANDARD_T = 298.15  # K

data = json_load("statistics_same_m_same_x_ss1_cs1_cs2/TEST.json")

# SS1 check
# Stoichiometry:
# A + M --ΔG'°=-2 kJ/M--> P
differences_SS1 = []
for solution_index in range(len(data["CS1_dG_R1"])):
    SS1_Pex = data["Single_Pex"][solution_index]
    SS1_Sex = data["Single_Sex"][solution_index]
    SS1_M = data["SS1_M"][solution_index]
    maximal_dG_SS1 = -2 + STANDARD_R*STANDARD_T * log(SS1_Pex / (SS1_Sex * SS1_M))

    SS1_dG_R1 = data["SS1_dG_R1"][solution_index]
    SS1_dG_R2 = data["SS1_dG_R2"][solution_index]
    SS1_dG_R3 = data["SS1_dG_R3"][solution_index]
    SS1_dG_R4 = data["SS1_dG_R4"][solution_index]
    SS1_dG_R5 = data["SS1_dG_R5"][solution_index]
    SS1_dG_R6 = data["SS1_dG_R6"][solution_index]
    dG_sum_SS1 = SS1_dG_R1 + SS1_dG_R2 + SS1_dG_R3 + SS1_dG_R4 + SS1_dG_R5 + SS1_dG_R6

    difference = abs(maximal_dG_SS1) - abs(dG_sum_SS1)
    differences_SS1.append(difference)
print("SINGLE) abs(Maximal_ΔG)-abs(Occurring_ΔG) SS1:")
print("Max: ", max(differences_SS1), " kJ/mol")
print("Mean: ", statistics.mean(differences_SS1), " kJ/mol")
print("Min: ", min(differences_SS1), " kJ/mol")
print("''''''")

# CS1/CS2 check
# Stoichiometry:
# A + M --ΔG'°=-2 kJ/M--> P
differences_CS1_CS2 = []
for solution_index in range(len(data["CS1_dG_R1"])):
    CS2_Pex = data["Community_Pex"][solution_index]
    CS1_Sex = data["Community_Sex"][solution_index]
    CS1_M = data["CS1_M"][solution_index]
    CS1_X = data["CS1_X"][solution_index]
    CS2_X = data["CS2_X"][solution_index]
    maximal_dG_CS1_CS2 = -2 + STANDARD_R*STANDARD_T * log((CS2_Pex * CS1_X) / (CS1_Sex * CS2_X * CS1_M))

    CS1_dG_R1 = data["CS1_dG_R1"][solution_index]
    CS1_dG_R2 = data["CS1_dG_R2"][solution_index]
    CS1_dG_R3 = data["CS1_dG_R3"][solution_index]
    CS2_dG_R4 = data["CS2_dG_R4"][solution_index]
    CS2_dG_R5 = data["CS2_dG_R5"][solution_index]
    CS2_dG_R6 = data["CS2_dG_R6"][solution_index]
    dG_sum_CS1_CS2 = CS1_dG_R1 + CS1_dG_R2 + CS1_dG_R3 + CS2_dG_R4 + CS2_dG_R5 + CS2_dG_R6

    difference = abs(maximal_dG_CS1_CS2) - abs(dG_sum_CS1_CS2)
    differences_CS1_CS2.append(difference)

print("COMM) abs(Maximal_ΔG)-abs(Occurring_ΔG) statistics for CS1/CS2:")
print("Max: ", max(differences_CS1_CS2), " kJ/mol")
print("Mean: ", statistics.mean(differences_CS1_CS2), " kJ/mol")
print("Min: ", min(differences_CS1_CS2), " kJ/mol")
print("''''''")
