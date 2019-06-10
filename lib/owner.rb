class Owner
  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def initialize(species)
    @species = species

    @pets = {
      :cats=>[], 
      :dogs=>[], 
      :fishes=>[]
    }

    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
  end

  def say_species
    "I am a #{self.species}."
  end


  def buy_fish(name)
    scott = Fish.new(name)
    self.pets[:fishes] << scott
  end

  def buy_cat(name)
    scott = Cat.new(name)
    self.pets[:cats] << scott
  end

  def buy_dog(name)
    scott = Dog.new(name)
    self.pets[:dogs] << scott
  end

  def walk_dogs
    @pets[:dogs].each { |dog| dog.mood = "happy" }
  end
  def play_with_cats
    @pets[:cats].each { |dog| dog.mood = "happy" }
  end

  def feed_fish
    @pets[:fishes].each { |dog| dog.mood = "happy" }
  end

  def sell_pets
    @pets[:fishes].each { |fish| fish.mood = "nervous" }
    @pets[:cats].each { |cat| cat.mood = "nervous" }
    @pets[:dogs].each { |dog| dog.mood = "nervous" }
    
    @pets = {
      :cats=>[], 
      :dogs=>[], 
      :fishes=>[]
    }
  end

  def list_pets
    fish_count = @pets[:fishes].count
    cat_count = @pets[:cats].count
    dog_count = @pets[:dogs].count

    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

end