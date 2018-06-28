class Song
  
  @@count = 0
  @@genres = {}
  @@artists = {}

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres.keys.include?(genre) ? @@genres[genre] += 1 : @@genres[genre] = 1
    @@artists.keys.include?(artist) ? @@artists[artist] += 1 : @@artist[artist] = 1
  end

  def self.genres
    @@genres.keys
  end

  def self.artists
    @@artists.keys
  end

  def self.genre_count
    @@genres
  end

  def self.artist_count
    @@artists
  end
  
end
