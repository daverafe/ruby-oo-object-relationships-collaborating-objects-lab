class Song
    attr_accessor :name
    attr_reader :artist
    @@all = []
    def initialize(name)
        @name = name  
        save
    end
    def artist=(artist)
        @artist = artist
    end
    def save
        @@all << self
    end
    def self.all
        @@all 
    end
    def self.new_by_filename(filename)
        title = filename.split(" - ")
        artist = title[0]
        song_title = title[1].gsub(".mp3", "")
        song = self.new(name) 
        song.name = song_title 
        song.artist_name = artist 
        song 
    end
    def artist_name=(name)
          self.artist = Artist.find_or_create_by_name(name)
    end
end