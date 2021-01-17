class Song
    
    attr_accessor :name, :artist
    
    @@all = []
    
    def initialize(name)
        @name = name
        self.save
    end
    
    def artist
        @artist
    end   
    
    def self.all
        @@all
    end
    
    def self.new_by_filename
        song = Song.new(song_name)
        song.artist = self
    end
    
    def save
        @@all << self
    end
    
    
    
    
end 