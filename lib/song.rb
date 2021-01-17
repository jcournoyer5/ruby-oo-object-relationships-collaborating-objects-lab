class Song
    
    attr_accessor :name, :artist
    
    @@all = []
    
    def initialize(name)
        @name = name
        self.save
    end
    
    # def artist=(artist)
    #     @artist = artist
    #     Artist.count << self
    # end  
    
    def artist
        @artist
    end   
    
    def artist_name
      if self.artist
          self.artist.name
      else  
          nil
      end      
    end   
    
    def self.all
        @@all
    end
    
    def save
        @@all << self
    end
    
    
    
    
end 