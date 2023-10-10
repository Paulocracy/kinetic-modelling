import cobra
from cobra.flux_analysis import flux_variability_analysis
from zoptmdfpathway import get_optmdfpathway_base_problem,\
                           get_thermodynamic_bottlenecks,\
                           perform_concentration_variability_analysis,\
                           perform_optmdfpathway_mdf_maximization

compartments = ("_1", "_2", "_3")

model = cobra.Model()

for comp in compartments:
    # Metabolites
    S_ex = cobra.Metabolite(id="S_ex"+comp, compartment="c")
    P_ex = cobra.Metabolite(id="P_ex"+comp, compartment="c")
    S = cobra.Metabolite(id="S"+comp, compartment="c")
    A = cobra.Metabolite(id="A"+comp, compartment="c")
    B = cobra.Metabolite(id="B"+comp, compartment="c")
    C = cobra.Metabolite(id="C"+comp, compartment="c")
    P = cobra.Metabolite(id="P"+comp, compartment="c")
    X = cobra.Metabolite(id="X"+comp, compartment="c")
    M = cobra.Metabolite(id="M"+comp, compartment="c")

    # Reactions
    EX_S = cobra.Reaction(id="EX_S"+comp, lower_bound=0.0, upper_bound=1.0)
    R1 = cobra.Reaction(id="R1"+comp, lower_bound=0.0, upper_bound=1.0)
    R2 = cobra.Reaction(id="R2"+comp, lower_bound=0.0, upper_bound=1.0)
    R3 = cobra.Reaction(id="R3"+comp, lower_bound=0.0, upper_bound=1.0)
    R4 = cobra.Reaction(id="R4"+comp, lower_bound=0.0, upper_bound=1.0)
    R5 = cobra.Reaction(id="R5"+comp, lower_bound=0.0, upper_bound=1.0)
    R6 = cobra.Reaction(id="R6"+comp, lower_bound=0.0, upper_bound=1.0)
    R7 = cobra.Reaction(id="R7"+comp, lower_bound=0.0, upper_bound=1.0)
    R8 = cobra.Reaction(id="R8"+comp, lower_bound=0.0, upper_bound=1.0)
    R9 = cobra.Reaction(id="R9"+comp, lower_bound=0.0, upper_bound=1.0)
    R10 = cobra.Reaction(id="R10"+comp, lower_bound=0.0, upper_bound=1.0)
    RTB = cobra.Reaction(id="RTB"+comp, lower_bound=-1.0, upper_bound=1.0)
    EX_P = cobra.Reaction(id="EX_P"+comp, lower_bound=0.0, upper_bound=1.0)

    EX_S.add_metabolites({
        S_ex: 1,
    })
    R1.add_metabolites({
        S_ex: -1,
        S: 1,
    })
    R2.add_metabolites({
        S: -1,
        A: 1,
        X: 1,
    })
    R3.add_metabolites({
        M: -1,
        A: -1,
        B: 1,
    })
    R4.add_metabolites({
        B: -1,
        C: 1,
    })
    R5.add_metabolites({
        C: -1,
        X: -1,
        P: 1,
    })
    R6.add_metabolites({
        P: -1,
        P_ex: 1,
    })
    R7.add_metabolites({
        M: 1,
    })
    R8.add_metabolites({
        M: -1,
    })
    R9.add_metabolites({
        X: 1,
    })
    R10.add_metabolites({
        X: -1,
    })
    EX_P.add_metabolites({
        P_ex: -1,
    })
    model.add_reactions([EX_S, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, RTB, EX_P])


# RTB handling
model.add_metabolites([
    cobra.Metabolite(id="B_ex", compartment="c")
])
RTB_1 = model.reactions.get_by_id("RTB_1")
model.remove_reactions([RTB_1])

RTB_2 = model.reactions.get_by_id("RTB_2")
RTB_2.add_metabolites({
    model.metabolites.get_by_id("B_2"): -1,
    model.metabolites.get_by_id("B_ex"): 1,
})
RTB_3 = model.reactions.get_by_id("RTB_3")
RTB_3.add_metabolites({
    model.metabolites.get_by_id("B_ex"): -1,
    model.metabolites.get_by_id("B_3"): 1,
})

# R1 handling
R1_3 = model.reactions.get_by_id("R1_3")
R1_3.lower_bound = 0.0
R1_3.upper_bound = 0.0

# R2 handling
R2_3 = model.reactions.get_by_id("R2_3")
R2_3.lower_bound = 0.0
R2_3.upper_bound = 0.0

# R3 handling
R3_3 = model.reactions.get_by_id("R3_3")
R3_3.lower_bound = 0.0
R3_3.upper_bound = 0.0

# R4 handling
R4_2 = model.reactions.get_by_id("R4_2")
R4_2.lower_bound = 0.0
R4_2.upper_bound = 0.0

# R5 handling
R5_2 = model.reactions.get_by_id("R5_2")
R5_2.lower_bound = 0.0
R5_2.upper_bound = 0.0

# R6 handling
R6_2 = model.reactions.get_by_id("R6_2")
R6_2.lower_bound = 0.0
R6_2.upper_bound = 0.0

model.objective = "R6_1"
results = flux_variability_analysis(model, fraction_of_optimum=0.0)
print(results)

# OptMDFpathway
concentration_values = {
    "DEFAULT": {
        "min": 1e-9,
        "max": 100.0,
    },
    "P_ex_1": {
        "min": 2.0,
        "max": 2.0,
    },
    "P_ex_2": {
        "min": 2.0,
        "max": 2.0,
    },
    "P_ex_3": {
        "min": 2.0,
        "max": 2.0,
    },
    "S_ex_1": {
        "min": 4.0,
        "max": 4.0,
    },
    "S_ex_2": {
        "min": 4.0,
        "max": 4.0,
    },
    "S_ex_3": {
        "min": 4.0,
        "max": 4.0,
    },
}
R = 8.314e-3
T = 298.15

base_dG0_values = {
    "R1": {
        "dG0": 0.0,
        "uncertainty": 0.0,
    },
    "R2": {
        "dG0": +4.0,
        "uncertainty": 0.0,
    },
    "R3": {
        "dG0": -5.0,
        "uncertainty": 0.0,
    },
    "R4": {
        "dG0": -5.0,
        "uncertainty": 0.0,
    },
    "R5": {
        "dG0": +4.0,
        "uncertainty": 0.0,
    },
    "R6": {
        "dG0": 0.0,
        "uncertainty": 0.0,
    },
    "RTB": {
        "dG0": 0.0,
        "uncertainty": 0.0,
    },
}
dG0_values = {}
for reac_id, value in base_dG0_values.items():
    for comp in compartments:
        dG0_values[reac_id+comp] = value

optmdfpathway_base_problem = get_optmdfpathway_base_problem(
    cobra_model=model,
    extra_constraints=[
        {
            "R6_3": 1,
            "ub": 1,
            "lb": 1,
        },
    ],
    dG0_values=dG0_values,
    metabolite_concentration_values=concentration_values,
    ratio_constraint_data=[],
    R=R,
    T=T,
)

print("\nA) MDF maximization results")
optmdfpathway_result = perform_optmdfpathway_mdf_maximization(
    optmdfpathway_base_problem=optmdfpathway_base_problem,
)
print(optmdfpathway_result)
print(optmdfpathway_result["values"]["var_B"])

print("\nB) CVA results")
variability_results = perform_concentration_variability_analysis(
    cobra_model=model,
    min_mdf=optmdfpathway_result["values"]["var_B"],
    optmdfpathway_base_problem=optmdfpathway_base_problem,
)
print(variability_results)
print(optmdfpathway_result["values"]["var_B"])

print("\nC) Check for thermodynamic bottlenecks")
bottlenecks, report = get_thermodynamic_bottlenecks(
    cobra_model=model,
    optmdfpathway_result=optmdfpathway_result,
    optmdfpathway_base_problem=optmdfpathway_base_problem
)
print(report)

targets = ("single", "community")
for target in targets:
    if target == "single":
        reac_id = "R6_1"
    else:
        reac_id = "R6_3"
    optmdfpathway_base_problem = get_optmdfpathway_base_problem(
        cobra_model=model,
        extra_constraints=[
            {
                reac_id: 1,
                "ub": 1,
                "lb": 1,
            },
        ],
        dG0_values=dG0_values,
        metabolite_concentration_values=concentration_values,
        ratio_constraint_data=[],
        R=R,
        T=T,
    )
    optmdfpathway_result = perform_optmdfpathway_mdf_maximization(
        optmdfpathway_base_problem=optmdfpathway_base_problem,
    )
    print(target, optmdfpathway_result["values"]["var_B"])

