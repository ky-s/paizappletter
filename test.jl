include("./solve.jl")

data = ["paiza", "apple", "letter"]

@assert "paizappletter" == reduce(word_compress, data)

