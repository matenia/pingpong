class CreateSeriesGames < ActiveRecord::Migration
  def change
    create_table :series_games do |t|
      t.references :game
      t.integer :score

      t.timestamps null: false
    end
  end
end
