require 'pry'
class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    #binding.pry
    self.genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    self.artist = Artist.find_or_create_by(name: "Drake")
    self.save
    self.artist
    #binding.pry
  end
end
