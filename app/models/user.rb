class User < ActiveRecord::Base
  attr_accessible :email, :username
  has_many :songs
end
