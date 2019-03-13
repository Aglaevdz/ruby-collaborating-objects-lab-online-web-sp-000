class MP3Importer
  attr_reader :path

  @@all = []

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(path).select{|f| f == '.' || f == '..'}
  end

  def import
    files.each {|f| Song.new_by_filename(f)}
  end

end
