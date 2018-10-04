class Song
  attr_accessor :artist , :name
 
 def initialize( name ) 
   @name = name
  
end
 

  
  def self.new_by_filename (filename )
    song_name = filename.split("-")[1].strip
    artist_name = filename.split("-")[0].strip
    song = Song.new(song_name)
    song.artist= Artist.find_or_create_by_name(artist_name)
    
    artist.add_song (song)
    song
  end
  
  
end