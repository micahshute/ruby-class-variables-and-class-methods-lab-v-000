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
    @@artists.keys.include?(artist) ? @@artists[artist] += 1 : @@artists[artist] = 1
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

  def self.count
    @@count
  end

end


s = Song.new("Fireflies", "Owl City", "Electronic")
s2 = Song.new('Hello Seattle', 'Owl City', 'Electronic')
puts Song.artist_count
puts Song.genre_count
puts Song.count
