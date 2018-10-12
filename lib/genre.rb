class Genre 

    attr_reader :name

    @@all = []

    def initialize(genre)
        @name = genre
        @@all << self
    end

    def songs
        Song.all.select{|s| s.genre == self}
    end

    def artists
        songs.map{|g| g.artist}
    end

    def self.all
        @@all
    end

end