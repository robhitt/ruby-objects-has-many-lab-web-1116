class Artist
  attr_accessor :name, :songs, :song

  @@all_songs = []

  def initialize(name)
    @name = name
    @songs = []
  end

  # adding song by object
  def add_song(song)
    @songs << song
    song.artist = self
    @@all_songs << song
  end

  # adding song by string name
  def add_song_by_name(name)
    add_song(Song.new(name))
  end

  def self.song_count
    @@song_count = @@all_songs.length
  end
end
