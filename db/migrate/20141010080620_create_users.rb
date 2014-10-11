class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :email

      t.timestamps null: false
    end

    User.create!(email: "brad@practiceignition.com")
    User.create!(email: "dane@practiceignition.com")
    User.create!(email: "jimmy@practiceignition.com")
    User.create!(email: "guy@practiceignition.com")
    User.create!(email: "brendan@practiceignition.com")
    User.create!(email: "dean@practiceignition.com")
    User.create!(email: "jackie@practiceignition.com")
    User.create!(email: "max@practiceignition.com")
  end

  def down
    drop_table :users
  end
end
