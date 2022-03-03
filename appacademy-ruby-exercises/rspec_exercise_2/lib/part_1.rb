def partition(arr, num)
    partition = Array.new(2) { Array.new }
    arr.each do |n|
        if n < num
            partition[0] << n
        else
            partition[1] << n
        end
    end
    partition
end

def merge(hash_1, hash_2)
    hash_1.merge(hash_2)
end

def censor(sentence, swearwords)
    words = sentence.split
    words.map! do |word|
        if swearwords.include?(word.downcase)
            asterisks(word)
        else
            word
        end
    end
    words.join(" ")
end

def asterisks(word)
    vowels = "aeiouAEIOU"
    new_word = ""
    word.each_char do |char|
        if vowels.include?(char)
            new_word += "*"
        else
            new_word += char
        end
    end
    new_word
end

def power_of_two?(num)
    powers = []
    i = 0
    while 2 ** i <= num
        powers << 2 ** i
        i += 1
    end
    powers.include?(num)
end