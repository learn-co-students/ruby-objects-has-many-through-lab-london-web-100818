require 'pry'

class Artist

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select do |i|
      if i.artist == self
        i
      end
    end
  end
#genres that iterates over that artist's songs and collects the genre of each song.

  def genres
    songs.collect { |g| g.genre }
  end


  def self.all
    @@all
  end



end





# #name
#   has a name (FAILED - 1)
# .all
#   knows about all artist instances (FAILED - 2)
# #new_song
#   given a name and genre, creates a new song associated with that artist (FAILED - 3)
# #songs
#   has many songs (FAILED - 4)
# #genres
#   has many genres, through songs (FAILED - 5)
#
# Song
# #new
#   initializes with a name, an artist, and a genre (FAILED - 6)
# .all
#   knows about all song instances (FAILED - 7)
# #genre
#   belongs to a genre (FAILED - 8)
# #artist
#   belongs to a artist (FAILED - 9)
#
# Genre
# #name
#   has a name (FAILED - 10)
# #songs
#   has many songs (FAILED - 11)
# .all
#   knows about all genre instances (FAILED - 12)
# #artists
#   has many artists, through songs (FAILED - 13)
