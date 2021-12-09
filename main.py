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
selections = ['time'] + [
    # "absolute_community_flux_advantage",
    "c_mmdf", "s_mmdf",
    # "community_mmdf_advantage",
    "A_mdf_R1",
    "A_mdf_R2",
    "A_mdf_R3",
    "A_mdf_RTB",
    "B_mdf_RTB",
    "B_mdf_R4",
    "B_mdf_R5",
    "B_mdf_R6",
    "A_B",
    "Community_Bex",
    "B_B",
] # model.getBoundarySpeciesIds() + model.getFloatingSpeciesIds()
result = model.simulate(0, 10, 10, selections=selections)
print(result)
# model.plot()
