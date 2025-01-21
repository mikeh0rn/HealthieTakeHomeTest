# when an animal eats food it likes, it makes a noise three times
# when an animal eats food it dislikes, it makes a noise one time


class Animal

	attr_accessor :animal_name, :likes, :dislikes, :noise

	def initialize(animal_name, likes = [], dislikes = [], noise = "")
		@animal_name = animal_name
		@likes = likes
		@dislikes = dislikes
		@noise = noise
	end

	def eat(food)
		if @likes.include?(food.name)
			3.times do 
				puts @noise
			end
		else
			puts @noise
		end	
	end

	#scale for future
	def add_to_likes(food)
		unless @likes.include?(food.name)
			@likes << food.name
	end

	def add_to_dislikes(food)
		unless @likes.include?(food.name)
			@dislikes << food.name
	end

end

# a cat likes CatFood, Chicken, and Milk
# a dog likes DogFood, CatFood, Chicken, HumanFood
# a Cat can meow and a Dog can bark (print "meow" or "bark" to STDOUT)