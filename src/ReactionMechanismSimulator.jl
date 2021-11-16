module ReactionMechanismSimulator
    using PyCall
    push!(PyVector(pyimport("sys")["path"]), "")
    const Chem = PyNULL()
    const Desc = PyNULL()
    const molecule = PyNULL()
    const pydot = PyNULL()
    const chemkin =PyNULL()
    const species = PyNULL()
    const reaction = PyNULL()
    const nasa = PyNULL()
    const wilhoit = PyNULL()
    const arrhenius = PyNULL()
    const falloff = PyNULL()
    const chebyshev = PyNULL()
    const solvation = PyNULL()
    const yaml = PyNULL()
    const os = PyNULL()
    function __init__()
        copy!(Chem,pyimport_conda("rdkit.Chem","rdkit","rdkit"))
        copy!(Desc,pyimport_conda("rdkit.Chem.Descriptors","rdkit","rdkit"))
        copy!(molecule,pyimport_conda("rmgpy.molecule","rmg","rmg"))
        copy!(pydot,pyimport_conda("pydot","pydot"))
        copy!(chemkin,pyimport_conda("rmgpy.chemkin","rmg","rmg"))
        copy!(species,pyimport_conda("rmgpy.species","rmg","rmg"))
        copy!(reaction,pyimport_conda("rmgpy.reaction","rmg","rmg"))
        copy!(nasa,pyimport_conda("rmgpy.thermo.nasa","rmg","rmg"))
        copy!(wilhoit,pyimport_conda("rmgpy.thermo.wilhoit","rmg","rmg"))
        copy!(arrhenius,pyimport_conda("rmgpy.kinetics.arrhenius","rmg","rmg"))
        copy!(falloff,pyimport_conda("rmgpy.kinetics.falloff","rmg","rmg"))
        copy!(chebyshev,pyimport_conda("rmgpy.kinetics.chebyshev","rmg","rmg"))
        copy!(solvation,pyimport_conda("rmgpy.data.solvation","rmg","rmg"))
        copy!(yaml,pyimport_conda("yaml","yaml"))
        copy!(os,pyimport_conda("os","os"))
    end
    include("Constants.jl")
    include("Tools.jl")
    include("Calculators/RateUncertainty.jl")
    include("Calculators/ThermoUncertainty.jl")
    include("Calculators/Thermo.jl")
    include("Calculators/Diffusion.jl")
    include("Calculators/Rate.jl")
    include("Calculators/Viscosity.jl")
    include("Calculators/Thermovec.jl")
    include("Calculators/Ratevec.jl")
    include("Calculators/kLAkH.jl")
    include("Species.jl")
    include("Solvent.jl")
    include("Reaction.jl")
    include("Phase.jl")
    include("PhaseState.jl")
    include("Interface.jl")
    include("Domain.jl")
    include("yml.jl")
    include("Parse.jl")
    include("Reactor.jl")
    include("Simulation.jl")
    include("TransitorySensitivities.jl")
    include("AutomaticMechanismAnalysis.jl")
    include("EdgeAnalysis.jl")
    include("Debugging.jl")
    include("Plotting.jl")
    include("fluxdiagrams.jl")
end
