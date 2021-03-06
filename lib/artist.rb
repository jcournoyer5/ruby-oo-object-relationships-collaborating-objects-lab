require "pry"
class Artist
    
    @@all = []
    
     attr_accessor :name, :songs

    
    def initialize(name)
        @name = name
        save
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
    end
    
    def self.find_or_create_by_name(name)
        self.find(name) ? self.find(name) : self.new(name)
    #   artist = self.find(name) 
    #   # binding.pry
    #   if artist
    #       return artist
    #   else  
    #     artist = Artist.new
    #     artist.name = name
    #     return artist 
          
      #end       
        
    end
    
    def self.find(name)
    self.all.find {|artist| artist.name == name }
    end
    
    def print_songs
        songs.each {|song| puts song.name}
    end    
    
end    