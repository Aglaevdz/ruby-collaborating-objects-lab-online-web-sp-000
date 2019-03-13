class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def save
    @@all << self
    self
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
  if @@all.find do |artist|
      artist.name == name
    end
    else
      new_artist = Artist.new(name)
      new_artist.save
    end
  end

  def print_songs
    self.songs.each { |song| puts song.name }
  end
end
