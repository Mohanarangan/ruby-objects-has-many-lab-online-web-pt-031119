class Artist 
  attr_accessor :name 
  #@@song_count= 0
  
  def initialize(name)
    @name = name
    @songs = []
    
  end
  
  def self.song_count
    Song.all.count
  end
  
  def songs
    @songs
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
    #@@song_count+=1
    
  end
  
  def add_song_by_name(name)
    song= Song.new(name)
    add_song(song)
  end
  
end
