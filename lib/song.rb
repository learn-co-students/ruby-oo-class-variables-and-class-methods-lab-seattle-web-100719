require 'pry'

class Song
    attr_reader(:name, :artist, :genre, :count, :artists)
    
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists.push(@artist)
        @@genres.push(@genre)
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
        returnHash = {}

        @@genres.each do |genre|
            if returnHash.keys.include?(genre)
                returnHash[genre] += 1
            else
                returnHash[genre] = 1
            end
        end

        returnHash
    end

    def self.artist_count
        returnHash = {}

        @@artists.each do |artist|
            if returnHash.keys.include?(artist)
                returnHash[artist] += 1
            else
                returnHash[artist] = 1
            end
        end

        returnHash
    end

end

binding.pry
0