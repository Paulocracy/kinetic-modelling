from math import log as ln

c_A = 1.0
c_S = 1.0
c_X1 = 0.75
c_B = 1.0
c_C = 1.0
c_X2 = 0.75
c_P = 1.0

R2_value = c_S / (1+c_S+c_A*c_X1)
R3_value = (c_A*c_X1) / (1+c_B+c_A*c_X1)
R4_value = c_B / (1+c_B+c_C*c_X2)
R5_value = (c_C*c_X2) / (1+c_P+c_C*c_X2)


print("R2", R2_value)
print("R3", R3_value)
print("R4", R4_value)
print("R5:", R5_value)
