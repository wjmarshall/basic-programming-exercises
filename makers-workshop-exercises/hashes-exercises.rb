animal = {}
animal_info = ["type", "name", "age", "colour"]
animal_info.each do |info|
  puts "Please enter animal #{info}"
  user_input = gets.chomp
  animal[info] = user_input
end
puts animal

animal = {"type"=>"Cat", "name"=>"Spot", "age"=>"3", "colour"=>"brown"}
animal.each_key { |key| puts key }
puts "Please choose a key"
user_input = gets.chomp
puts animal[user_input]

animal = {"type"=>"Cat", "name"=>"Spot", "age"=>"3", "colour"=>"brown"}
puts animal.select { |key, val| val.start_with?("S") }

animal = {"type"=>"Cat", "name"=>"Spot", "age"=>"3", "colour"=>"brown"}
puts animal.transform_keys { |key| key.upcase }
puts animal.transform_values { |val| 2 }
puts animal.key("Cat")
puts animal.value?("dog")


