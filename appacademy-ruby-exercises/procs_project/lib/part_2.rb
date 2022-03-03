def reverser(str, &prc)
    prc.call(str.reverse)
end

def word_changer(sent, &prc)
    new_words = sent.split.map { |word| prc.call(word) }
    new_words.join(" ")
end

def greater_proc_value(num, prc_1, prc_2)
    result_1 = prc_1.call(num)
    result_2 = prc_2.call(num)
    if result_1 > result_2
        result_1
    else
        result_2
    end
end

def and_selector(arr, prc_1, prc_2)
    arr.select { |ele| prc_1.call(ele) == true && prc_2.call(ele) == true }
end

def alternating_mapper(arr, prc_1, prc_2)
    arr.map.with_index do |ele, i|
        if i.even?
            prc_1.call(ele)
        else
            prc_2.call(ele)
        end
    end
end