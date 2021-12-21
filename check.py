from math import exp
from math import log as ln

def dG(S1, S2, P1, P2, dG0, R, T):
    return dG0 + R * T * ln((P1 * P2) / (S1 * S2))

def gamma(S1, S2, P1, P2, dG0, R, T):
    return (1 - exp(dG(S1, S2, P1, P2, dG0, R, T) / (R*T)))

def div(conc, k):
    return conc/k

def kappa(S1, S2, P1, P2, k_S1, k_S2, k_P1, k_P2):
    return ( (div(S1, k_S1) * div(S2, k_S2)) / (1+(div(S1, k_S1) * div(S2, k_S2)) + (div(P1, k_P1) * div(P2, k_P2))) )

R = 0.008315
T = 298
k_cat = 37968.03883746455
dG0 = -5
S1 = 2.511055497219362
S2 = 1
P1 = 4.3459894600427535
P2 = 4.345989460042764
k_S1 = 0.21875410116626032
k_S2 = 1
k_P1 = 8974.766000777265
k_P2 = 1.7231385923445943
print("dG'", dG(S1, S2, P1, P2, dG0, R, T))
print("κ", kappa(S1, S2, P1, P2, k_S1, k_S2, k_P1, k_P2))
print("γ", gamma(S1, S2, P1, P2, dG0, R, T))
print("V+*κ*γ: ", k_cat * kappa(S1, S2, P1, P2, k_S1, k_S2, k_P1, k_P2) * gamma(S1, S2, P1, P2, dG0, R, T))

def giulia(k_cat, S1, P1, P2, k_S1, k_P1, k_P2, dG0, R, T):
    nominator = k_cat * (S1/k_S1) * (1 - (((P1*P2)/S1)/exp(-dG0/(R*T))) )
    denominator = 1+ (S1/k_S1) + (P1/k_P1) * (P2/k_P2)
    return nominator / denominator

print("giulia", giulia(k_cat, S1, P1, P2, k_S1, k_P1, k_P2, dG0, R, T))
