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

  def self.create 
    @@all << self 
  end

  def save
    self.class.all << self
  end
  
  def self.new_by_name 
    self.name = @name
  end

end