class CreateGame < Struct.new(:players)
  def call
    Game.new.tap do |game|
      players.each do |player|
        game.players << Player.new(user_id: player[:user][:id], score: player[:score])
      end
      game.save!
    end
  end
end
