class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :name
      t.string :image_url

      t.timestamps null: false
    end
  end

  def down
    drop_table :users
  end
end
