# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".


def compress_str(str)
    chars = str.split("")
    count = 1
    new_arr = []
    (0...chars.length - 1).each do |i|
        if chars[i] == chars[i + 1]
            count += 1
        else
            new_arr.push(count, chars[i])
            count = 1
        end
    end
    new_arr.push(count, chars[-1])
    compressed = new_arr.select { |ele| ele != 1 }
    compressed.join
end





p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
