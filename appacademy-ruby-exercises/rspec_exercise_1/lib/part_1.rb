def average(n1, n2)
    (n1 + n2) / 2.0
end

def average_array(nums)
    nums.sum / nums.length.to_f
end

def repeat(str, num)
    str * num
end

def yell(str)
    str.upcase + "!"
end

def alternating_case(sentence)
    words = sentence.split
    words.map!.with_index do |word, i|
        if i % 2 == 0
            word.upcase
        else
            word.downcase
        end
    end
    words.join(" ")
end
