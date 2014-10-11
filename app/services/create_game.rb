class CreateGame < Struct.new(:scores)
  def call
    Game.new.tap do |game|
      scores.each do |user_id, score|
        game.game_scores << GameScore.new(user_id: user_id, score: score)
      end
      game.save!
    end
  end
end
