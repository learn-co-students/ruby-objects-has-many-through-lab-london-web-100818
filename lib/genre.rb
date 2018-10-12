class Genre

    @@all = []
    attr_accessor :name
    # initialize
      # name
      # save to @@all
  
    def initialize(name)
      @name = name
      @@all << self
    end
  
    # instance method songs
      # iterates through all songs and finds the
      # songs that belong to that genre
    def songs
      Song.all.select {|song| song.genre == self}
    end
    # instance method artists
      # iterates over that genre's songs and
      # collects the artist that owns each song
    def artists
      songs.collect {|song| song.artist}
    end
  
    def self.all
      @@all
    end
  
  end
  