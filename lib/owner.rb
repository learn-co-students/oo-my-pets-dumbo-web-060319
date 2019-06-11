class Owner
  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = { fishes: [], cats: [], dogs: [] }
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all = []
  end

  def say_species
    "I am a #{self.species}."
    # "I am a #{@species}."
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end

  def walk_dogs
    dogs = self.pets[:dogs]
    dogs.map { |dog| dog.mood = "happy" }
  end

  def play_with_cats
    cats = self.pets[:cats]
    cats.map { |cat| cat.mood = "happy" }
  end

  def feed_fish
    fishes = self.pets[:fishes]
    fishes.map { |fish| fish.mood = "happy" }
  end

  def sell_pets
    self.pets.each { |pet_type, pets|
      pets.each { |pet| pet.mood = "nervous" }
    }

    @pets = { fishes: [], cats: [], dogs: [] }
  end

  def list_pets
    pet_nums = []
    self.pets.each { |pet_type, pets|
      pet_nums << pets.length
    }
    return "I have #{pet_nums[0]} fish, #{pet_nums[2]} dog(s), and #{pet_nums[1]} cat(s)."
  end
end

# owner = Owner.new("human")

# owner.buy_fish("Bubbles")
# owner.buy_fish("Nemo")
# owner.buy_cat("Crookshanks")
# owner.buy_dog("Fido")
# owner.buy_dog("Snuffles")
# owner.buy_dog("Charley")

# puts owner.list_pets

#  { fishes: [], cats: [], dogs: [] }
