from math import exp, log
from pydoc import visiblename
import numpy as np
from helper import save_xy_point_plot
R = 0.008315
T = 298

def flux_one_s_one_p(conc_E, k_cat, k_S, k_P, dG0, conc_S, conc_P):
    k_eq = exp(-(dG0 /(R*T)))
    nominator = conc_E * k_cat * (conc_S/k_S) * (1-(conc_P/conc_S/k_eq))
    denominator = 1 + (conc_S/k_S) + (conc_P/k_P)

    return nominator / denominator

def flux_one_s_two_p(conc_E, k_cat, k_S, k_P1, k_P2, dG0, conc_S, conc_P1, conc_P2):
    k_eq = exp(-(dG0 /(R*T)))
    nominator = conc_E * k_cat * (conc_S/k_S) * (1-((conc_P1*conc_P2)/conc_S/k_eq))
    denominator = 1 + (conc_S/k_S) + (conc_P1/k_P1) * (conc_P2/k_P2)

    return nominator / denominator

def flux_two_s_one_p(conc_E, k_cat, k_S1, k_S2, k_P, dG0, conc_S1, conc_S2, conc_P):
    k_eq = exp(-(dG0 /(R*T)))
    nominator = conc_E * k_cat * (conc_S1/k_S1) * (conc_S2/k_S2) * (1-((conc_P)/(conc_S1*conc_S2)/k_eq))
    denominator = 1 + (conc_S1/k_S1) * (conc_S2/k_S2) + (conc_P/k_P)

    return nominator / denominator

# R2
conc_E = 1
k_cat = 5
conc_S = 3.0343842625206188
conc_A = 0.19012619269751524
conc_Xs = np.linspace(
    start=0.001,
    stop=1000,
    num=1000,
)
k_S = 0.4
k_A = 3.1
k_X = 2.1
dG0 = 4

vs = []
for conc_X in conc_Xs:
    v = flux_one_s_two_p(conc_E, k_cat, k_S, k_A, k_X, dG0, conc_S, conc_A, conc_X)
    print(v)
    vs.append(v)

# R3
conc_E = 1
k_cat = 8
conc_A = 0.19012619269751524
conc_Xs = np.linspace(
    start=0.001,
    stop=1000,
    num=1000,
)
conc_B = 0.1966776202339944
k_A = 4.6
k_X = 0.4
k_B = 2.5
dG0 = -5

vs = []
for conc_X in conc_Xs:
    v = flux_two_s_one_p(conc_E, k_cat, k_A, k_X, k_B, dG0, conc_S, conc_X, conc_B)
    print(v)
    vs.append(v)

import matplotlib.pyplot as plt
save_xy_point_plot(
    path="",
    xs = conc_Xs,
    ys=vs,
    title="",
    xlabel="X_conc",
    ylabel="Flux",
)
plt.show()

"""
# R1
conc_E = 1
k_cat = 1e3
conc_Sex = 1.1
conc_S = 1
k_Sex = 1
k_S = 1
dG0 = 0

v = flux_one_s_one_p(
    conc_E=conc_E,
    k_cat=k_cat,
    k_S=k_Sex,
    k_P=k_S,
    dG0=dG0,
    conc_S=conc_Sex,
    conc_P=conc_S,
)
"""

"""
dGs = np.linspace(
    start=-100,
    stop=100
)
for dG in dGs:
    expterm = exp(dG/(R*T))
    print(dG, ":", expterm, ":", log(1-expterm))
"""
