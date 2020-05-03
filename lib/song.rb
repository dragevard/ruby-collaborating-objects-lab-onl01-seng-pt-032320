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
  
  def self.new_by_filename(file)
    new_file = file.delete_suffix(".mp3").split(" - ")
    artist = new_file[0]
    song = new_file[1]
    new_song = self.new(song)
    new_song.artist_name = artist 
    new_song
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
    
    