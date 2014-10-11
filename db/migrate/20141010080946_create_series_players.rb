class CreateSeriesPlayers < ActiveRecord::Migration
  def change
    create_table :series_players do |t|
      t.references :series
      t.references :user

      t.timestamps null: false
    end
  end
end
