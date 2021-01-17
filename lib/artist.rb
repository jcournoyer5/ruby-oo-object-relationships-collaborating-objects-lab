class Artist
    
     attr_accessor :name
    
    @@all = []
    
    def initialize(name)
        @name = name
        
    end
    
    def name=(name)
        @name = name
    end
    
    def self.all
        @@all
    end
    
    def songs
    end
    
    def add_song
    end
    
    def self.find_or_create_by_name
    end
    
    def print_songs
        Song.all.length
    end    
    
end    