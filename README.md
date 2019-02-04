# MathPhysicalConstants

| **Documentation**                       | [**Package Evaluator**][pkgeval-link] | **Build Status**                          | **Code Coverage**               |
|:---------------------------------------:|:-------------------------------------:|:-----------------------------------------:|:-------------------------------:|
| [![][docs-stable-img]][docs-stable-url] | [![][pkg-0.0.5-img]][pkg-0.0.5-url]       | [![Build Status][travis-img]][travis-url] | [![][coveral-img]][coveral-url] |
| [![][docs-latest-img]][docs-latest-url] | [![][pkg-0.0.6-img]][pkg-0.0.6-url]       | [![Build Status][appvey-img]][appvey-url] | [![][codecov-img]][codecov-url] |

[![Package Evaluator](https://juliaobserver.com/packages/MathPhysicalConstants)](https://juliaobserver.com/packages/MathPhysicalConstants)

[![Build Status](https://api.travis-ci.org/LaGuer/MathPhysicalConstants.jl.svg)](https://travis-ci.org/LaGuer/MathPhysicalConstants.jl)

[![Build status](https://ci.appveyor.com/api/projects/status/h2223a8hus4hxam3/branch/master?svg=true)](https://ci.appveyor.com/project/LaGuer/MathPhysicalConstants-jl/branch/master)

[![Coverage Status](https://coveralls.io/repos/github/LaGuer/MathPhysicalConstants.jl/badge.svg)](https://coveralls.io/github/LaGuer/MathPhysicalConstants.jl)


MathPhysicalConstants is a Julia package which has the values of a range of mathematical and physical constants updated with most recent available dataset from BIPM in 2018. Currently [MKS](https://en.wikipedia.org/wiki/MKS_system_of_units) and [CGS](https://en.wikipedia.org/wiki/Centimetre%E2%80%93gram%E2%80%93second_system_of_units) units and [International System of Units](https://en.wikipedia.org/wiki/International_System_of_Units). Updated CODATA 2017 and redefinition of SI base units following [ISU, BIPM, CGPM, CIPM](https://www1.bipm.org/utils/common/pdf/CGPM-2018/26th-CGPM-Resolutions.pdf) approved resolutions and scheduled to come into force on 20 May 2019.

## Installation

The package can be installed directly from its [github repository](https://github.com/LaGuer/MathPhysicalConstants.jl):

    Pkg.clone("https://github.com/LaGuer/MathPhysicalConstants.jl")

## Usage

Usage is pretty straightforward. Start off by loading the package.

    julia> using MathPhysicalConstants
    
Query and retrieve the Planck Constant using the most updated International System of Units (SI)    
    
    julia> MathPhysicalConstants.SI.PlanckConstantH
    6.62607015e-34
    
    julia> big(MathPhysicalConstants.SI.PlanckConstantH)
    6.62606895999999960651234296395253273824527450725424150396117674176417443843193e-34
    
Now let's have a look at ƛe ≡ ħ/m_e.c the reduced electron radius formula. Try it with BigFloat and Measurement
    
    julia> big(MathPhysicalConstants.SI.PlanckConstantH)/(big(MathPhysicalConstants.SI.MassElectron)*big(MathPhysicalConstants.SI.SpeedOfLight))
    2.42631027637202010003687587191357482878156204816578736228540160944126721996979e-12

Let's switch to Earth's gravitational acceleration in MKS units.

    julia> PhysicalConstants.MKS.GravAccel
    9.80665

Or in CGS units.

    julia> MathPhysicalConstants.CGS.GravAccel
    980.665
    
last but not least in International System of Units (SI)
    
    julia> MathPhysicalConstants.SI.GravAccel
    9.80665
    

License
-------

The `MathPhysicalConstants.jl` package is licensed under the MIT "Expat" License.  The
original author is La Guer.

Please, cite this paper (http://vixra.org/abs/1811.0146v8) if you
employ this package in your research work.


[docs-latest-img]: https://img.shields.io/badge/docs-latest-blue.svg
[docs-latest-url]: https://LaGuer.github.io/MathPhysicalConstants.jl/latest/

[docs-stable-img]: https://img.shields.io/badge/docs-stable-blue.svg
[docs-stable-url]: https://LaGuer.github.io/MathPhysicalConstants.jl/stable/

[pkgeval-link]: http://pkg.julialang.org/?pkg=MathPhysicalConstants

[pkg-0.5-img]: http://pkg.julialang.org/badges/MathPhysicalConstants.0.5.svg
[pkg-0.5-url]: http://pkg.julialang.org/detail/MathPhysicalConstants.html
[pkg-0.6-img]: http://pkg.julialang.org/badges/MathPhysicalConstants.0.6.svg
[pkg-0.6-url]: http://pkg.julialang.org/detail/MathPhysicalConstants.html

[travis-img]: https://travis-ci.org/LaGuer/MathPhysicalConstants.jl.svg?branch=master
[travis-url]: https://travis-ci.org/LaGuer/MathPhysicalConstants.jl

[appvey-img]: https://ci.appveyor.com/api/projects/status/u8mg5dlhyb1vjcpe?svg=true
[appvey-url]: https://ci.appveyor.com/project/LaGuer/mathphysicalconstants-jl

[coveral-img]: https://coveralls.io/repos/github/LaGuer/MathPhysicalConstants.jl/badge.svg?branch=master
[coveral-url]: https://coveralls.io/github/LaGuer/MathPhysicalConstants.jl?branch=master

[codecov-img]: https://codecov.io/gh/LaGuer/MathPhysicalConstants.jl/branch/master/graph/badge.svg
[codecov-url]: https://codecov.io/gh/LaGuer/MathPhysicalConstants.jl
