# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def largest_prime_factor(num)
    prime_factors = (2..num).select { |n| num % n == 0 && is_prime?(n) }
    prime_factors[-1]
end

def is_prime?(num)
    (2...num).each { |n| return false if num % n == 0 }
    true
end

def unique_chars?(str)
    counter = Hash.new(0)
    str.each_char { |char| counter[char] += 1 }
    counter.each_value { |val| return false if val > 1 }
    true
end

def dupe_indices(arr)
    counter = Hash.new(0)
    dupe_indices = {}
    arr.each { |c| counter[c] += 1 }
    dupes = counter.select { |k, v| v > 1 }
    indices = []
    dupes.each_key do |k|
        arr.each.with_index do |c, i|
            if c == k
                indices << i
            end
        end
        dupe_indices[k] = indices
        indices = []
    end
    dupe_indices
end

def ana_array(arr1, arr2)
    counter1 = Hash.new(0)
    counter2 = Hash.new(0)
    arr1.each { |ele| counter1[ele] += 1}
    arr2.each { |ele| counter2[ele] += 1}
    counter1 == counter2
end

