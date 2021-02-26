class Artist
    attr_accessor :name
    
    @@all = []
   
    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select {|song|song.artist == self}
                                        #what is this self referring to?
    end

    def add_song(song)
        song.artist = self
                        #what is this self referring to?
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        song.artist = self 
    end

    def self.song_count
        Song.all.count

    end
    # def self.all
    #     return @@all
    # end


end