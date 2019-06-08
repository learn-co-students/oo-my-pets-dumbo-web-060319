require "pry"
class Owner
  attr_accessor :pets, :name
  @@all=[]
  def initialize(name)
    @name=name
      @pets={fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    @@all=[]
  end

  def species
    "human"
  end

  def say_species
    "I am a human."
  end

  def pets
  @pets

  end

  def buy_cat(name)
    @pets[:cats]<< Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def buy_fish(name)
  @pets[:fishes] << Fish.new(name)
  end

  def walk_dogs
    self.pets[:dogs].each do |dog_ins|
      dog_ins.mood="happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat_ins|
      cat_ins.mood="happy"
    end
  end

def feed_fish
  self.pets[:fishes].each do |fish_ins|
    fish_ins.mood="happy"
  end
end


def sell_pets
    @pets.each do |type,pet_arr|
        pet_arr.each do |pet_ins|
          pet_ins.mood="nervous"
        end
    end
  @pets={fishes: [], cats: [], dogs: []}
end

def list_pets
  return "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
end
end
