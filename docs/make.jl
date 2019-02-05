using Documenter, MathPhysicalConstants

makedocs(
    modules = [MathPhysicalConstants],
    format = Documenter.HTML(),
    sitename = "MathPhysicalConstants",
    pages    = Any[
        "Introduction" => "index.md",
        "Installation" => "installation.md",
        "Usage"        => "usage.md",
        "api"          => "api.md",
    ]
)

deploydocs(
    repo = "github.com/LaGuer/MathPhysicalConstants.jl.git",
    target = "build",
    deps = nothing,
    make = nothing,
)
