class Song 
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name 
  end
  
  def self.new_by_filename(file)
    song_info = file.chomp(".mp3").split(" - ")
    song = Song.new(song_info[1])
    Artist.name = song_info[0]
    song
  end
  
end
