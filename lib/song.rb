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
        song = Song.new(file_name)
        @song = song
    end
    
    def save
        @@all << self
    end
    
    def artist_name=(name)
         artist = Artist.new
        artist.name = name
    end    
    
    
    
    
end 