using MathPhysicalConstants, Measurements, SpecialFunctions, QuadGK, Calculus
using Test, LinearAlgebra

import Base: isapprox
import Measurements: value, uncertainty

if VERSION < v"0.7.0-DEV.2005"
    using Base.Test
else
    using Test
end

@testset "Comparisons and Tests" begin
    # isapprox is overloaded only for tests.  Make sure it works as expected.
    @test 5 ± 1 ≉ 5 ± 2
    @test (nextfloat(5.0) ± nextfloat(1.0)) ≈ 5 ± 1
    @test 5.1 ± 1 ≉ 5 ± 1
    @test measurement(big"0.75", 0.01) == 3//4 ± 1//100
    @test measurement(big(π)) ≠ π
    @test ℯ ≠ measurement(Float32(ℯ))
    @test 3//4 == measurement(Float32(0.75), Float32(0)) ≠ 4//3
    @test isnan(x) == false
    @test isfinite(y) == true && isfinite(measurement(Inf)) == false
    @test isinf(measurement(Inf)) == true && isinf(x) == false
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

