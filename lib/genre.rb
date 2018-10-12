class Genre 

    attr_reader :name, :songs, :artists

    @@all = []

    def initialize(genre)
        @name = genre
        @songs = []
        @artists = []
        @@all << self
    end

    def songs=(song)
        self.songs << song
    end

    def artists=(artist)
        self.artists << artist
    end


    def self.all
        @@all
    end

end