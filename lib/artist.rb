class Artist 
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def add_song(instance)
    instance.artist = self
    
  end 
  
  def songs
    Song.all.select do |song|
      song.artist == self 
    end 
  end 
  
  def self.find_or_create_by_name(name)
    if all.find do |artist|
      artist.name == name 
      artist.name
    end
    else
      self.new(name)
    end
  end
  
  def print_songs
    songs.each do |song|
      puts song.name
    end
  end
end