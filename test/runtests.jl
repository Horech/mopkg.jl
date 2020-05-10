using mopkg
using Test

@testset "mopkg.jl" begin
    @test divByHalf(x -> x^3 * x - sin(x), -100, 200) == (0.5919843912124634, 25)

    @test divByHalf(x -> x^3 * x^2 * x * exp(2) - sin(x), -100, 200) == (0.4583433270454407, 25)
end
