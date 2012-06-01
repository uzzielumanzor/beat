class Song < ActiveRecord::Base
  attr_accessible :album, :artist, :image, :length, :number, :petition, :title, :year
  validates_presence_of :petition
  belongs_to :user
end
