class Artist
    
    @@all = []
    
     attr_accessor :name, :songs

    
    def initialize(name)
        @name = name
        self.save
    end
    
    def name=(name)
        @name = name
    end
    
    def self.all
        @@all
    end
    
    def save
        @@all << self
    end
    
    def songs
        Song.all.select {|song| song.artist == self}
    end
    
    def add_song(song)
        song.artist = self
        Artist.all
    end
    
    def self.find_or_create_by_name(artist)
        artist = Artist.new
        #song.artist = self
        @artist
    end
    
    def self.find(name)
    self.all.find {|artist| artist.name == name }
    end
    
    def print_songs
        songs.each {|song| puts song.name}
    end    
    
end    