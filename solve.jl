function word_compress(word1::String, word2::String)
    for size in reverse(1:length(word2))
        endswith(word1, word2[1:size]) && return word1 * word2[size+1:end]
    end
    word1 * word2
end

