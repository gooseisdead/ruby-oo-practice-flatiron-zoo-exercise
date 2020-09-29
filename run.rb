require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
bronx = Zoo.new("Bronx Zoo", "The Bronx")
cpk = Zoo.new("Central Park Zoo", "Central Park")
menifee = Zoo.new("Menifee Zoo", "Menifee, CA")

cat = Animal.new("cat", 13, "Penny")
feline = Animal.new("cat", 10, "Garfield")
kitty = Animal.new("kitty", 8, "Raisin")
sasha = Animal.new("kitty", 7, "Sasha")

cat.zoo = bronx
feline.zoo = bronx
kitty.zoo = cpk
sasha.zoo = menifee




binding.pry
puts "done"
