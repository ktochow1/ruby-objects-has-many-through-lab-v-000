class Artist 
attr_accessor :name, :songs

@@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
    
  end
  
  def self.all
    @@all 
  end
  
  def new_song(name, genre)
   # name, artist, genre
    new_song = Song.new(name, self, genre)
     @songs << new_song
  end
 
end