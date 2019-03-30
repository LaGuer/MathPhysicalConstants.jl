using MathPhysicalConstants, Measurements, SpecialFunctions, QuadGK, Calculus
using Test

import Base: isapprox
import Measurements: value, uncertainty

if VERSION < v"0.7.0-DEV.2005"
    using Base.Test
else
    using Test
end

@testset "Comparisons and Tests" begin
    # isapprox is overloaded only for tests.  Make sure it works as expected.
    @test measurement(big"0.75", 0.01) == 3//4 ± 1//100
    @test measurement(big(π)) ≠ π
    @test ℯ ≠ measurement(Float32(ℯ))
    @test 3//4 == measurement(Float32(0.75), Float32(0)) ≠ 4//3
    @test MathPhysicalConstants.SI.PlanckConstantHbar*MathPhysicalConstants.SI.c == 3.1615262057012976e-26
    @test MathPhysicalConstants.SI.PlanckConstantHbar//(MathPhysicalConstants.SI.m_e*MathPhysicalConstants.SI.c) == 3.1615262057012976e-26
    @test MathPhysicalConstants.SI.GravitationalConstant^2 == 4.45433438464e-21
    @test MathPhysicalConstants.SI.MassElectron*MathPhysicalConstants.SI.MassProton*MathPhysicalConstants.SI.MassHydrogen == 2.550178071499845e-84
    @test isinteger(-3 ± 0)
    @test !isinteger(3 ± 1)
    @test !isinteger(pi ± 0)
    @test iszero(0 ± 0)
    @test iszero(zero(Measurement))
    @test !iszero(0 ± 1)
    @test !iszero(1 ± 0)
    @test isone(1 ± 0)
    @test isone(one(Measurement))
    @test !isone(1 ± 1)
    @test !isone(0 ± 0)
end
# using Base.Test
#include("../src/RunTests.jl")

