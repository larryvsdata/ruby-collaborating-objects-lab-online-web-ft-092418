


class MP3Importer
  
  
  def initialize (list_of_filenames)
    list_of_filenames.each{ |filename| Song.initialize(filename) }
  end
end