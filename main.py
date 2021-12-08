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

selections = ['time'] + [
    "A_dG_R1",
    "A_dG_R2",
    "A_dG_R3",
    "A_dG_RTB",
    "B_dG_RTB",
    "B_dG_R4",
    "B_dG_R5",
    "B_dG_R6",
    "C_dG_R1",
    "C_dG_R2",
    "C_dG_R3",
    "C_dG_R4",
    "C_dG_R5",
    "C_dG_R6",
] # model.getBoundarySpeciesIds() + model.getFloatingSpeciesIds()
model.simulate(0, 500, 250, selections=selections)
model.plot()
