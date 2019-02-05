MathPhysicalConstants.jl
MathPhysicalConstants.jl is a package that allows you to use mathematical and physical constants with uncertainties, perform calculations involving them, and easily get the uncertainty of the result according to linear error propagation theory. This library is written in Julia, a modern high-level, high-performance dynamic programming language designed for technical computing.

When used in the Julia interactive session, it can serve also as an easy-to-use calculator.

The main features of the package are:

Support for most mathematical operations available in Julia standard library and special functions from SpecialFunctions.jl package, involving real and complex numbers. All existing functions that accept AbstractFloat (and Complex{AbstractFloat} as well) arguments and internally use already supported functions can in turn perform calculations involving numbers with uncertainties without being redefined. This greatly enhances the power of Measurements.jl without effort for the users
Functional correlation between variables is correctly handled, so x - x \approx 0 \pm 0, x/x \approx 1 \pm 0, \tan(x) \approx \sin(x)/\cos(x), \mathrm{cis}(x) \approx \exp(ix), etc...
Support for arbitrary precision (also called multiple precision) numbers with uncertainties. This is useful for measurements with very low relative error
Define arrays of Mathematical and physical constants, define measurements and perform calculations with them. Some linear algebra functions work out-of-the-box
Propagate uncertainty for any function of real arguments (including functions based on C/Fortran calls), using @uncertain macro
Function to get the derivative and the gradient of an expression with respect to one or more independent mathematical and physical constants measurements
Functions to calculate standard score and weighted mean
Parse strings to create measurement objects
Easy way to attach the uncertainty to a number using the ± sign as infix operator. This syntaxic catalyst makes the code more readable and visually appealing
Combined with external packages allows for error propagation of measurements with their physical units
Extensible in combination with external packages: you can propagate math and physical constants errors of measurements with their physical units, perform numerical integration with QuadGK.jl, numerical and automatic differentiation, and much more.
Integration with Plots.jl.

The example used to handle dimensional analysis correlation is described in this paper:

If you use use this package for your research, please cite it.

Other features are expected to come in the future, see the How Can I Help? section and the TODO list.

The MathPhysicalConstants.jl package is licensed under the MIT "Expat" License. 
