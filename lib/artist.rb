class Artist 
attr_accessor :name, :songs

@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all 
  end
  
  def new_song(name, genre)
    new_song = self.new_song(name, genre) 
    # genre = Genre.new(name)
    # self.name = self
    # name.self = self
  end
end