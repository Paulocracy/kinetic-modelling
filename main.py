import matplotlib
import random
import ray
import tellurium as te
import roadrunner as rr
from helper import json_write
from dataclasses import dataclass
from multiprocessing import cpu_count
from tellurium.tellurium import model
from typing import Any, Dict, List, Tuple
import concurrent


@ray.remote
def sample(model: rr.RoadRunner,
           selections: List[str],
           sampled_values: Dict[str, float],
           max_scaling: float):
    is_not_stable = True
    while is_not_stable:
        # Change values randomly
        for id in sampled_values.keys():
            original_value = sampled_values[id]
            to_maximize: bool = random.randint(0, 1) == 1
            if to_maximize:
                minimum = original_value
                maximum = original_value * max_scaling
            else:
                minimum = original_value / max_scaling
                maximum = original_value
            new_value = random.uniform(a=minimum, b=maximum)
            model[id] = new_value

        # Run simulation
        result = model.simulate(0, 500, 1000, selections=selections)

        # Convergence test
        preprevious_result = result[-3,:]
        previous_result = result[-2,:]
        current_result = result[-1,:]

        is_not_stable = False
        current_index = 1
        while current_index < len(preprevious_result):
            preprevious_value = round(preprevious_result[current_index], 10)
            previous_value = round(previous_result[current_index], 10)
            current_value = round(current_result[current_index], 10)

            if (preprevious_value != previous_value) or (previous_value != current_value):
                is_not_stable = True
                break
            current_index += 1

    return result[-1,:]



matplotlib.use('TkAgg')
ray.init(num_cpus=cpu_count())

model = te.loada("toymodel.antimony")

with open("toymodel.cps", "w") as f:
    f.write(model.getSBML())

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
string_keys: List[str] = [
    key for key in model.keys() if type(key) is str
]
sampled_parameter_ids = [
    key for key in string_keys if key.startswith("global_")
]
original_parameter_values: Dict[str, float] = {
    key: model[key] for key in sampled_parameter_ids
}

print("A")
num_samples = 250
max_scaling = 100
futures = [
    sample.remote(model, selections, original_parameter_values, max_scaling=100)
    for i in range(num_samples)
]
import time
c = time.time()
results = ray.get(futures)
print(c - time.time())
