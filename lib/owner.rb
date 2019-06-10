require 'pry'
class Owner
	attr_reader :species
	attr_accessor :all, :name, :pets

	@@all = []

	def initialize(species)
		@species = species
		@pets = {:dogs => [], :fishes => [], :cats => []}
		@@all << self
	end

	def say_species
		"I am a #{@species}."
	end

	def buy_fish(fish_name)
		@pets[:fishes] << Fish.new(fish_name)
	end

	def buy_cat(cat_name)
		@pets[:cats] << Cat.new(cat_name)
	end

	def buy_dog(dog_name)
		@pets[:dogs] << Dog.new(dog_name)
	end

	def walk_dogs
		@pets[:dogs].map {|d| d.mood = 'happy'}
	end

	def play_with_cats
		@pets[:cats].map {|c| c.mood = 'happy'}
	end

	def feed_fish
		@pets[:fishes].map {|f| f.mood = 'happy'}
	end

	def sell_pets
		@pets.each do |species, pets_array|
			pets_array.each do |pet|
				pet.mood = 'nervous'
			end
			pets_array.clear
		end
	end

	def list_pets
		"I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
	end

	def self.all
		@@all
	end


	def self.count
		@@all.length
	end

	def self.reset_all
		@@all = []
	end

end