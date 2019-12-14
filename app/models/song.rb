class Song < ActiveRecord::Base
  
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    return self.genre.name
  end

  def drake_made_this
    drake = Artist.new(name: "Drake")
    drake.save unless Artist.where({name: "Drake"}).first
    self.artist = drake
  end
  
end
