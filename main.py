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

selections = ['time'] + ["absolute_community_flux_advantage"] # model.getBoundarySpeciesIds() + model.getFloatingSpeciesIds()
model.simulate(0, 500, 250, selections=selections)
# model.plot()
