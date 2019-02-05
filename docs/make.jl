using Documenter, MathPhysicalConstants

makedocs(
    modules = [MathPhysicalConstants],
    format = :html,
    sitename = "MathPhysicalConstants",
    pages    = Any[
        "Introduction" => "index.md",
        "Installation" => "installation.md",
        "Usage"        => "usage.md",
    ]
)

deploydocs(
    repo = "github.com/LaGuer/MathPhysicalConstants.jl.git",
    target = "build",
    deps = nothing,
    make = nothing,
)
