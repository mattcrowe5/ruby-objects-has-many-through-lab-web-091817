class Artist
  attr_reader :name
  attr_accessor :songs, :genre


  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song_name)
    @songs << song_name
    song_name.artist = self
  end

  def songs
    @songs
  end

  def genres
    @songs.collect{|song| song.genre}
  end


end
