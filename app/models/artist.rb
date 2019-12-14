class Artist < ActiveRecord::Base
  
  has_many :songs
  has_many :genres, through: :songs
  
  def get_genre_of_first_song
    return self.songs.first.genre
  end
  
  def song_count
    return self.songs.size
  end
  
  def genre_count
    return self.genres.size
  end
  
end
