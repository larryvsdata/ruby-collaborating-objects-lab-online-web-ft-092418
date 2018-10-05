


class MP3Importer
  attr_accessor :path
  
  def initialize (directory)
    self.path = directory
  end
  
  def import 
    Dir.entries(@path).select {|f| !File.directory? f}
  end
  
end