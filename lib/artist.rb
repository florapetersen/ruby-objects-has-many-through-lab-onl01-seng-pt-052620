class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  @@all = []

  def self.all
    @@all
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

end
