import tellurium as te
import matplotlib
import numpy as np
from tellurium.tellurium import model
matplotlib.use('TkAgg')

model = te.loada("toymodel.antimony")
print(model.getCurrentAntimony())
print(model.getFullStoichiometryMatrix())

with open("toymodel.cps", "w") as f:
    f.write(model.getSBML())

model["global_k_A_R2"] = 100
print(model["global_k_A_R2"])
selections = [
    "time",
    "c_mmdf",
    "s_mmdf",
    "absolute_community_mmdf_advantage",
    "relative_community_mmdf_advantage",
    "community_A_to_single_metabolite_X_ratio",
    "community_B_to_single_metabolite_X_ratio",
    "absolute_community_flux_advantage",
    "relative_community_flux_advantage",
    "community_flux",
    "single_flux",
]
result = model.simulate(0, 10, 10, selections=selections)
print(result)
# model.plot()
