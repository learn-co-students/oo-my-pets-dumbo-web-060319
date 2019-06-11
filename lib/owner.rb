require 'pry'
class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @@all << self

    @pets = {fishes: [], dogs: [], cats: []}
  end 

  def self.all 
    @@all 
  end 
  
  def self.count
    @@all.length
  end 

  def self.reset_all
    @@all.clear
  end 

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    pets[:fishes] << fish
  end 
  #   can buy a fish that is an instance of the Fish class (FAILED - 24)
  #   knows about its fishes (FAILED - 25)

  def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats] << cat
  end 
  #   can buy a cat that is an instance of the Cat class (FAILED - 26)
  #   knows about its cats (FAILED - 27)

  def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs] << dog
  end 
  #   can buy a dog that is an instance of the Dog class (FAILED - 28)
  #   knows about its dogs (FAILED - 29)

  def walk_dogs
    puts "Walkin' the dogs"
    self.pets[:dogs].map { |dog| dog.mood = "happy" }
  end 
  #   walks the dogs which makes the dogs' moods happy (FAILED - 30)

  def play_with_cats
    puts "Playin' with the cats"
    self.pets[:cats].map { |cat| cat.mood = "happy" }
  end 
    #   plays with the cats which makes the cats moods happy (FAILED - 31)

  def feed_fish
    puts "Feedin' the fishes"
    self.pets[:fishes].map { |fish| fish.mood = "happy" }
  end 
  #   feeds the fishes which makes the fishes' moods happy (FAILED - 32)

  def sell_pets
    self.pets.each do |species, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
    end
    self.pets.clear
  end 
  #   can sell all its pets, which make them nervous (FAILED - 33)

  def list_pets
    "I have #{self.pets[:fishes].size} fish, #{self.pets[:dogs].size} dog(s), and #{self.pets[:cats].size} cat(s)."
  end
  #   can list off its pets (FAILED - 34)

end