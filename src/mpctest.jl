using MathPhysicalConstants
using Base.Test
using Test

@testset begin
    @test MathPhysicalConstants.MKS.PlancksConstantH == 6.62606896e-34
    @test MathPhysicalConstants.SI.PlanckConstantH == 6.62607015e-34
    @test MathPhysicalConstants.SI.SanchezElectrConstant == 137.035999139e0
    @test MathPhysicalConstants.CGS.GravitationalConstant == 6.673e-8
    #\\\ @test iszero(measurement(MathPhysicalConstants.IS.SanchezElectrConstant) - measurement(MathPhysicalConstants.IS.SanchezElectrConstant))
    #\\\ @test setprecision(BigFloat, 768) do; precision(ustrip(big(c))) end == 768
    #\\\@test measurement(h) === measurement(h)
    #\\\@test iszero(measurement(α) - measurement(α))
    #\\\@test isone(measurement(BigFloat, atm) / measurement(BigFloat, atm))
    #\\\@test iszero(measurement(BigFloat, ħ) - (measurement(BigFloat, h) / 2big(pi)))
    #\\\@test isone(measurement(BigFloat, ħ) / (measurement(BigFloat, h) / 2big(pi)))
end

#using PyCall
#const Chem = PyNULL()
#const molecule = PyNULL()
#const pydot = PyNULL()
#copy!(Chem,pyimport_conda("rdkit.Chem","rdkit","rmg"))
#copy!(molecule,pyimport_conda("rmgpy.molecule","rmgpy","rmg"))
#copy!(pydot,pyimport_conda("pydot","pydot","rmg"))

#include("Constants.jl")
#include("Tools.jl")
#include("Calculators/RateUncertainty.jl")
#include("Calculators/ThermoUncertainty.jl")
#include("Calculators/Thermo.jl")
#include("Calculators/Diffusion.jl")
#include("Calculators/Rate.jl")
#include("Calculators/Viscosity.jl")
#include("Species.jl")
#include("Solvent.jl")
#include("Reaction.jl")
#include("Phase.jl")
#include("PhaseState.jl")
#include("Interface.jl")
#include("Domain.jl")
#include("Parse.jl")
#include("Reactor.jl")
#include("Simulation.jl")
#include("fluxdiagrams.jl")
#include("Equilibrium.jl")
#include("Plotting.jl")
