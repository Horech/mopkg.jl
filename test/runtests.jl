using mopkg1
using Test

@testset "mopkg.jl" begin
    @test divByHalf(x -> x^3 * x - sin(x), -100) == (-0.4351967756944537, 0.5919857025146484)

    @test divByHalf(x -> x^3 * x^2 * x * exp(2) - sin(x), -100) == (-0.3739561126960816, 0.4583415985107422)
end
