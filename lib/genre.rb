class Genre
  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def songs
    Song.all.select { |song| song.genre == self }
  end

  def self.all
    @@all
  end
end
