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
  
  def songs
    song.all.select do |song|
      song.artist == self 
    end 
  end 
  
  def self.find_or_create_by_name(name)
    self.all.detect do |artist|
      artist.name == name 
    
      self.new(name)
    end
end