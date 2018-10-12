class Artist

    @@all = []
  
    attr_accessor :name
  
    # initialize
      # name
      # save into @@all
  
      def initialize(name)
        @name = name
        @@all << self
      end
  
  
    # instance method new_song(name, genre)
      # creates a new song
      # song belongs to the artist
      def new_song(name, genre)
         song = Song.new(name, self, genre)
      end
    # instance method songs
      # iterates through all songs and finds the
      # songs that belong to that artist
      def songs
        Song.all.select {|song| song.artist == self}
      end
    # instance method genres
      # iterates over that artist's song and
      # collects the genre of each song
  
      def genres
      songs.collect {|song| song.genre}
      end
  
    def self.all
      @@all
    end
  
  end
  