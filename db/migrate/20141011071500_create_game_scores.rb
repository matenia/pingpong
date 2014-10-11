class CreateGameScores < ActiveRecord::Migration
  def change
    create_table :game_scores do |t|
      t.references :game
      t.references :user
      t.integer :score

      t.timestamps null: false
    end
  end
end
