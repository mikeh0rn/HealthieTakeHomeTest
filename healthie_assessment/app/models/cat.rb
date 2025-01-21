class Cat < Animal

	def initialize(animal_name)
		super(animal_name, ["CatFood", "Chicken", "Milk"], ["Lemons"], "meow")
	end

	def add_new_liked_food(food)
		add_to_likes(food)
	end

	def add_new_disliked_food(food)
		add_to_dislikes(food)
	end

end