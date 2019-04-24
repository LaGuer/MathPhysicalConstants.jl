using MathPhysicalConstants, Measurements, SpecialFunctions, QuadGK, Calculus, Unitful
import MathPhysicalConstants.SI: α, O_M, c, e, ε0, h, µ0, ℯ, PlanckConstantHbar, ƛe
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
    @test MathPhysicalConstants.SI.PlanckConstantHbar/(MathPhysicalConstants.SI.MassElectron*MathPhysicalConstants.SI.c) == 3.861592046068738e-13
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

@testset "Base" begin
#    @test ustrip(big(h)) == big"6.626070040e-34"
    @test setprecision(BigFloat, 768) do; precision(ustrip(big(c))) end == 768
    @test measurement(h) === measurement(h)
    @test iszero(measurement(α) - measurement(α))
#    @test isone(measurement(BigFloat, ƛe) / measurement(BigFloat, ƛe))
#    @test iszero(measurement(BigFloat, PlanckConstantHbar) - (measurement(BigFloat, h) / 2big(pi)))
#    @test isone(measurement(BigFloat, PlanckConstantHbar) / (measurement(BigFloat, h) / 2big(pi)))
end

@testset "Utils" begin
    @test c === ustrip(float(c))
    @test_throws ErrorException h.foo
end

#@testset "Promotion" begin
#    x = @inferred(inv(μ0 * c ^ 2))
#    T = promote_type(typeof(ε0), typeof(x))
#    u = u"A^2 * kg^-1 * m^-3 * s^4"
#    @test promote_type(typeof(α), BigInt) === BigFloat
#    @test promote_type(typeof(α), typeof(1u"m/cm")) === Float64
#    @test T === Quantity{Float64, dimension(x), typeof(u)}
#    @test convert(T, ε0) === (ε0 / unit(ε0)) * u
#    @test convert(Float32, α) === float(Float32, α)
#    @test uconvert(u"cm/s", c) === uconvert(u"cm/s", float(c))
#end
@testset "Maths" begin
#    @test α ≈ @inferred(ℯ^2/(4 * pi * ε0 * PlanckConstantHbar * c))
    @test @inferred(α + 2) ≈ 2 + float(α)
    @test @inferred(5 + α) ≈ float(α) + 5
    @test @inferred(α + 2.718) ≈ 2.718 + float(α)
    @test @inferred(-3.14 + α) ≈ float(α) - 3.14
    @test ε0 ≈ @inferred(1 / (μ0 * c ^ 2))
    @test @inferred(big(0) + α) == big(α)
    @test @inferred(α * 1.0) == float(α)
end

@testset "Show" begin
    @test repr(c) ==
        "2.99792458e8"   
        
end
# using Base.Test
#include("../src/RunTests.jl")

