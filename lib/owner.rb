class Owner
  # code goes here
  @@all = []
  @@count = 0 
  attr_accessor :name, :pets, :count, :all
  attr_reader :species 
  def initialize(species)
    @@all << self 
    @@count = @@count + 1
    @species = species 
    @pets = 
    {
      :fishes => [],
      :dogs => [],
      :cats => []
    }
  end
  def self.all 
    @@all 
  end 
  def self.count 
    @@count
  end
  def self.reset_all
    @@count = 0
    @@all.clear
  end
  def say_species 
    return "I am a #{@species}."
  end 
  
  def buy_fish(fish)
    @pets[:fishes].push(Fish.new(fish))
  end
  def buy_cat(cat) 
    @pets[:cats].push(Cat.new(cat))
  end
  def buy_dog(dog)
    @pets[:dogs].push(Dog.new(dog))
  end
  def walk_dogs 
    @pets[:dogs].each { |dog| dog.mood = "happy" }
  end
  def play_with_cats 
    @pets[:cats].each { |cat| cat.mood = "happy" }
  end
  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end 
  
  def sell_pets
    @pets.each do |k,v|
      v.each do |animal|
        animal.mood = "nervous"
      end
      v.clear 
    end
  end
  
  def list_pets
    fish = 0 
    dogs = 0
    cats = 0 
    @pets. each do |k,v|
      if k == :fishes 
        v.each do 
          fish = fish + 1 
        end
      end
      if k == :dogs 
        v.each do 
          dogs = dogs + 1 
        end
      end
      if k == :cats 
        v.each do 
          cats = cats + 1 
        end
      end
    end
    return "I have #{fish} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end
  
# "I have 2 fish, 3 dog(s), and 1 cat(s)."
end