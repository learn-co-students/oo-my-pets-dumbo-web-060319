class Owner
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species

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


end