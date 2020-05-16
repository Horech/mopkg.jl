using mopkg
using Test

@testset "mopkg.jl" begin
    @test divByHalf(x -> x^3 * x - sin(x), -100) == (-0.43519677568752524, 0.5919828545302153)

    @test divByHalf(x -> x^3 * x^2 * x * exp(2) - sin(x), -100) == (-0.3739561126977562, 0.4583420231938362)
end
