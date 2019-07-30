class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def initialize
    @name = name 
    @artist_name = artist_name
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
    def self.create 
    song = self.new 
    @@all << song 
    song
  end
  
  def self.new_by_name(name) 
    song = self.new 
    song.name = name 
    song
  end
  
  def self.create_by_name(name)
    song = self.new 
    song.name = name 
    @@all << song 
    song
  end
  
  def self.fing_by_name(name)
    @@all.find{|a| a.name == name}
  end

end