class Genre

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all
  end

  def artists
    songs.collect { |song| song.artist}
  end

  def self.all
    @@all
  end

end
