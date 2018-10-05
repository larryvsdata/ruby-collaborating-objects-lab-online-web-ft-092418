


class MP3Importer
  attr_accessor :path s
  
  def initialize (directory)
    self.path = directory
  end
  
  def files 
    Dir.entries(@path).select {|f| !File.directory? f}
  end
  
  
  
end