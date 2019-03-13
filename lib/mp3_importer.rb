class MP3Importer
  attr_reader :path

  @@all = []

  def initialize(path)
    @path = path
  end

  def files
     @files = []
     file = Dir.enteries(@path)
     file.each do |file|
       if file.include?("mp3")
         @files << files
      end
  end
  @files

  def import
    files.each {|f| Song.new_by_filename(f)}
  end

