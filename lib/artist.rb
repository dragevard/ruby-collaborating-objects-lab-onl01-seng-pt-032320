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
    if self.all.detect do |artist|
      artist.name == name 
    end
    else
      self.new(name)
    end
end