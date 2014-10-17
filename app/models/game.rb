class Game < ActiveRecord::Base
  belongs_to :series
  has_many :players
end
