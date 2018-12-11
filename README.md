# MathPhysicalConstants

MathPhysicalConstants is a Julia package which has the values of a range of mathematical and physical constants updated with most recent available dataset from BIPM in 2018. Currently [MKS](https://en.wikipedia.org/wiki/MKS_system_of_units) and [CGS](https://en.wikipedia.org/wiki/Centimetre%E2%80%93gram%E2%80%93second_system_of_units) units and International System of Units [SI](https://www1.bipm.org/utils/common/pdf/CGPM-2018/26th-CGPM-Resolutions.pdf) are supported.

## Installation

The package can be installed directly from its [github repository](https://github.com/LaGuer/MathPhysicalConstants.jl):

    Pkg.clone("https://github.com/LaGuer/MathPhysicalConstants.jl")

## Usage

Usage is pretty straightforward. Start off by loading the package.

    julia> using MathPhysicalConstants

Now access Earth's gravitational acceleration in MKS units.

    julia> PhysicalConstants.MKS.GravAccel
    9.80665

Or in CGS units.

    julia> MathPhysicalConstants.CGS.GravAccel
    980.665

also available in Imperial units.

    julia> MathPhysicalConstants.Imperial.GravAccel
    32.174049
    
last but not least in International System of Units
    
    julia> MathPhysicalConstants.SI.GravAccel
    9.80665
    
