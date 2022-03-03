def palindrome?(str)
    i = str.length - 1
    reversed = ""
    while i >= 0
        reversed += str[i]
        i -= 1
    end
    reversed == str
end

def substrings(str)
    substrings = []
    (0...str.length).each do |n|
        i = n
        while i < str.length
            substrings << str[n..i]
            i += 1
        end
    end
    substrings
end

def palindrome_substrings(str)
    substrings = substrings(str)
    substrings.select { |substr| palindrome?(substr) && substr.length > 1 }
end