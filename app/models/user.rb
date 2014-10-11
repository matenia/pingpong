class User < ActiveRecord::Base
  has_many :series
  has_many :games, through: :series
end
