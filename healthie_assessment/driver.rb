require_relative 'config/environment'

cat = Cat.new("Clause")
dog = Dog.new("Stella")

cat_food = Food.new("CatFood")
dog_food = Food.new("DogFood")

puts "Cat eats cat food and says:"
cat.eat(cat_food)
puts "_________________________"
puts "Dog eats cat food and says:"
dog.eat(cat_food)
puts "_________________________"
puts "Cat eats dog food and says:"
cat.eat(dog_food)
puts "_________________________"
puts "Dog eats dog food and says:"
dog.eat(dog_food)

