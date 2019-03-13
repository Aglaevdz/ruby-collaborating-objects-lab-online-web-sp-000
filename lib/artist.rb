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
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
  @@all.find do |artist|
    if artist.name == name
      artist
    else
      new_artist = Artist.new(name)
      new_artist
    end
  end
end

  def print_songs
    self.songs.each { |song| puts song.name }
  end
end
