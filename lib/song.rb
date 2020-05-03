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
    song_name = filename.split(" - ")[1]
        artist_name=( filename.split(" - ")[0])
        song = self.new(song_name)
        artist = Artist.find_or_create_by_name(artist_name)
        # binding.pry
        artist.add_song(song)
        song.artist = artist
        song
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end
end
end
    