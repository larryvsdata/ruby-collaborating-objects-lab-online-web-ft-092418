class Song
  attr_accessor :artist , :name
 
 def initialize( name ) 
   @name = name
  
end
 

  
  def new_by_filename (filename ):
    song_name = filename.split("-")[1]
    artist_name = filename.split("-")[0]
    @artist= Artist.find_or_create_by_name(artist_name)
    song=self.new(song_name)
    @artist.add
    
  end
  
  
end