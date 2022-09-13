class Song
    attr_accessor :name, :artist, :genre
    @@count = 0 
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end
    def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
          if artist_count[artist]
            artist_count[artist] += 1 
          else
            artist_count[artist] = 1
          end
        end
        artist_count
    end

    def self.genre_count
        genre_count = {}
        @@genres.each do |genre|
          if genre_count[genre]
            genre_count[genre] += 1 
          else
            genre_count[genre] = 1
          end
        end
        genre_count
    end
    
    def self.all
        @@all
        # Recall that to define a class method we use the def self.method_name syntax. The self. before the method name is a reminder that the method will not be running on a particular Song instance, but will be acting as the factory from which all Songs are made: the Song class.
    end

    private 
    def add_song
        puts self
        # Private methods cannot be called by an explicit receiver. What does that mean? It means we can only call private methods within the context of the defining class: the receiver of a private method is always self.
    end

end
