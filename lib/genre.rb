class Genre
  attr_accessor :genre, :name, :songs

  @@all = []

  def initialize(genre)
    @name = genre
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all
  end

  def artists
    Artist.all
  end


end
