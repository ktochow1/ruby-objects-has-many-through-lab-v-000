require 'pry'
class Genre 
attr_accessor :name, :songs 

@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all 
    @@all
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end
    
  def artists
    songs.collect do |song|
      song.artist
        
    end
  end
  
  
  
#   ninetynine_problems = Song.new("99 Problems", "rap")
# jay_z = Artist.new("Jay-Z")
 
# ninetynine_problems.artist = jay_z
 
# ninetynine_problems.artist.name
  
end 