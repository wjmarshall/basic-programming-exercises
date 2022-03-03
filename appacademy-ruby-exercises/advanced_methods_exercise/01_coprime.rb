# Write a method, coprime?(num_1, num_2), that accepts two numbers as args.
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.


# p coprime?(25, 12)    # => true
# p coprime?(7, 11)     # => true
# p coprime?(30, 9)     # => false
# p coprime?(6, 24)     # => false

def coprime?(num_1, num_2)
    num_1_divisors = find_divisors(num_1)
    num_2_divisors = find_divisors(num_2)
    num_1_divisors.none? { |i| num_2_divisors.include?(i) } 
end

def find_divisors(num)
    divisors = []
    (2..num).each { |i| divisors << i if num % i == 0 }
    divisors
end

p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false
