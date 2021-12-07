import tellurium as te
import matplotlib
import numpy as np
from tellurium.tellurium import model
matplotlib.use('TkAgg')

model = te.loada("giuliamodel.antimony")
print(model.getCurrentAntimony())
print(model.getFullStoichiometryMatrix())

with open("main.xml", "w") as f:
    f.write(model.getSBML())

model.simulate(0, 100, 50)
model.plot()
