function word_compress(word1::String, word2::String)
    for size in reverse(1:length(word2))
        endswith(word1, word2[1:size]) && return word1 * word2[size+1:end]
    end
    word1 * word2
end

function word_compress2(word1::String, word2::String)
    i = findlast(size -> endswith(word1, word2[1:size]), 1:length(word2))
    i == nothing && (i = 0)

    word1 * word2[i+1:end]
end

function word_compress3(word1::String, word2::String)
    findlast(size -> endswith(word1, word2[1:size]), 1:length(word2)) |>
    i -> i == nothing ? 0 : i |>
    i -> word1 * word2[i+1:end]
end
