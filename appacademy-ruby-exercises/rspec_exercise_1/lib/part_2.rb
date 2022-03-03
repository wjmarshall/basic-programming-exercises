def hipsterfy(word)
    chars = word.split("")
    chars.reverse_each do |char|
        if ("aeiou").include?(char)
            char.replace("")
            break
        end
    end
    chars.join
end

def vowel_counts(str)
    chars = str.downcase.split("")
    counter = Hash.new(0)
    chars.each { |char| counter[char] += 1 if "aeiou".include?(char) }
    counter
end

def caesar_cipher(msg, n)
    alpha = "abcdefghijklmnopqrstuvwxyz"
    msg.each_char.with_index do |char, i|
        alpha.each_char.with_index do |letter, position|
            if letter == char
                msg[i] = alpha[(position + n) % 26]
                break
            end
        end
    end
    msg
end