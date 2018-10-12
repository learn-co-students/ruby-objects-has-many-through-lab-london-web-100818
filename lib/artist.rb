require 'pry'
class Artist

    attr_reader :name
    attr_accessor :songs, :genres

    @@all = []
    

    def initialize(name)
        @name = name
        @songs = []
        @genres = []
        @@all << self
    end

    def songs=(song)
        @songs << song
    end

    def genres=(genre)
        @genres << genre
    end

    def new_song(name, genre)
        self.genres = genre
        self.songs = Song.new(name, self,  genre)
    end

    def self.all
        @@all
    end

end