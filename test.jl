include("./solve.jl")

data = ["paiza", "apple", "letter"]

@assert "paizappletter" == reduce(word_compress, data)
@assert "paizappletter" == reduce(word_compress2, data)
@assert "paizappletter" == reduce(word_compress3, data)

