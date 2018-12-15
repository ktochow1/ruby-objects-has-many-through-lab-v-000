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
    Song.all.select do |song| #.select returns an array of items that match the given block's value
      song.genre == self
    end
  end
    
  def artists
    songs.collect do |song| #.collect creates new array with return values iterated in block
      song.artist
        
    end
  end

  
end 