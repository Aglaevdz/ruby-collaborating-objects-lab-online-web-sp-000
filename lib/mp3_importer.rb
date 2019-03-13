class MP3Importer
  attr_reader :path

  @@all = []

  def initialize(filepath)
    @path = filepath
  end

  def files
    Dir.entries(path).reject{|f| f == '.' || f == '..'}
  end

  def import
    files.each {|f| Song.new_by_filename(f)}
  end

end
