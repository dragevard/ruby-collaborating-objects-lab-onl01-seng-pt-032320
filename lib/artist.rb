class Artist 
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all 
    @@class
  end
  
  def add_song(instance)
    instance.artist = self
  end 
end