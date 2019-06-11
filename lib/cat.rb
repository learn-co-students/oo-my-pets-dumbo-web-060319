class Cat
  
  @@all = []

  def initialize (name, mood = "nervous")
  	@name = name
  	@mood = mood
  	@@all << self
  end

  attr_reader :name
  attr_accessor :mood

  
end