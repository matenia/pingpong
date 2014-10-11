class SeriesPlayer < ActiveRecord::Base
  belongs_to :series
  has_many :series_games, through: :series
end
