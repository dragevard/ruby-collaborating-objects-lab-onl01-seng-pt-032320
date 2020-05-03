class Song 
  
  attr_accessor :name, :artist 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def self.all
    @@all 
  end
  
  def add_song
  
  def self.new_by_filename(file)
    song = file.split(" - ")[1]
    artist = file.split(" - ")[0]
    new_song = self.new(song)
    new_artist = Artist.find_or_create_by_name(artist)
    artist.add_song(new_song)
    song.artist = new_artist
    new_song
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end
end
end
    