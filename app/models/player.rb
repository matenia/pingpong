class Player < ActiveRecord::Base
  belongs_to :game
  belongs_to :user

  validates :game, presence: true
  validates :score, presence: true
  validates :user, presence: true

  def winner?
    score == game.players.map(&:score).max
  end
end
