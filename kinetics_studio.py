from math import exp, log
import numpy as np
R = 0.008315
T = 298

def flux(conc_E, k_cat, k_S, k_P, dG0, conc_S, conc_P):
    k_eq = exp(-(dG0 /(R*T)))
    nominator = conc_E * k_cat * (conc_S/k_S) * (1-(conc_P/conc_S/k_eq))
    denominator = 1 + (conc_S/k_S) + (conc_P/k_P)

    return nominator / denominator

# R1
conc_E = 1
k_cat = 1e3
conc_Sex = 1.1
conc_S = 1
k_Sex = 1
k_S = 1
dG0 = 0

v = flux(
    conc_E=conc_E,
    k_cat=k_cat,
    k_S=k_Sex,
    k_P=k_S,
    dG0=dG0,
    conc_S=conc_Sex,
    conc_P=conc_S,
)
print(v)

dGs = np.linspace(
    start=-100,
    stop=100
)
for dG in dGs:
    expterm = exp(dG/(R*T))
    print(dG, ":", expterm, ":", log(1-expterm))
