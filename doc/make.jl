using Documenter, MathPhysicalConstants

makedocs(
    modules = [MathPhysicalConstants],
    format = :html,
    sitename = "MathPhysicalConstants",
    pages    = Any[
        "Introduction" => "index.md",
        "Installation" => "installation.md",
        "Usage"        => "usage.md",
        "Examples"     => "examples.md",
        "Performance"  => "performance.md",
        "Development"  => "todo.md",
        "Appendix"     => "appendix.md",
    ]
)

deploydocs(
    repo = "github.com/LaGuer/MathPhysicalConstants.jl.git",
    target = "build",
    deps = nothing,
    make = nothing,
)
