class Genre < ActiveRecord::Base
  
  has_many :songs
  has_many :artists, through: :songs
  
  def song_count
    return self.songs.size
  end
  
  def artist_count
    return self.artists.size
  end
  
  def all_artist_names
    names = []
    self.artists.each do |artist|
      names << artist.name
    end
    
    return names
  end
  
end
