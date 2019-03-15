class Artist
  attr_reader :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end

  def songs
    Song.all.select { |song| song.artist == self }
  end

  def genres
    genres_array = []
    Song.all.each do |song|
      genres_array << song.genre if song.genre == self
    end
  end
end
