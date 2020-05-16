using mopkg
using Test

@testset "mopkg.jl" begin
    @test divByHalf(x -> x^3 * x - sin(x), -100) == (0.5919828545302153, -0.43519677568752524)

    @test divByHalf(x -> x^3 * x^2 * x * exp(2) - sin(x), -100) == (0.4583420231938362, -0.3739561126977562)
end
