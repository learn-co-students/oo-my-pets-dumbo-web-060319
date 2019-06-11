class Owner
    attr_reader :species
    attr_accessor :name, :pets
    @@all = []
    

    def initialize(name)
      @name = name
      @species = "human"
      @pets = {fishes: [], cats: [], dogs: []}
      @@all << self
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

    def say_species
      "I am a human."
    end

    def buy_fish(name)
      @pets[:fishes] << Fish.new(name)
    end

    def buy_cat(name)
      @pets[:cats] << Cat.new(name)
    end

    def buy_dog(name)
      @pets[:dogs] << Dog.new(name)
    end

    def walk_dogs
      Dog.all.each do |dog|
        dog.mood = "happy"
      end
    end

    def play_with_cats
      Cat.all.each do |cat|
        cat.mood = "happy"
      end
    end

    def feed_fish
      Fish.all.each do |fish|
        fish.mood = "happy"
      end
    end

    def sell_pets
      Dog.all.each do |dog|
        dog.mood = "nervous"
      end
      Cat.all.each do |cat|
        cat.mood = "nervous"
      end
      Fish.all.each do |fish|
        fish.mood = "nervous"
      end
      @pets = {fishes: [], cats: [], dogs: []}
    end

    def list_pets
      "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
    end

    
  



end