class Song
    attr_accessor :name, :artist, :genre

    @@count=0
    @@artists=[]
    @@genres=[]
    def initialize(name,artist,genre)
        @genre= genre
        @artist= artist
        @name=  name
        @@count +=1
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

    def self.genre_count
        ha={}
       self.genres.each do |genre|
         ha[genre]= @@genres.count(genre) 
       end  
       ha
    end

    def self.artist_count
        ha={}
        self.artists.each do |artist|
            ha[artist]=@@artists.count(artist)        
        end
        ha
    end

end 
