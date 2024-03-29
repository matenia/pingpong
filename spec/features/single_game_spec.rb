require 'rails_helper'

RSpec.describe "A single Game", js: true do
  let!(:user1) { User.create!(name: "User A") }
  let!(:user2) { User.create!(name: "User B") }

  it "should play and track a single game" do
    visit("/")

    click_user(user1)
    click_user(user2)
    click_on("Start game")

    expect(page).to have_content("VS")

    21.times { find(".player1").click }
    within(".player1") { expect(page).to have_content("Winner") }
    within(".player2") { expect(page).to_not have_content("Winner") }

    game = Game.last
    expect(game).to_not be_nil
    expect(game.players.map(&:score).sort).to eql([0, 21])
  end

  def click_user(user)
    find("[data-id='#{user.id}']").click
  end
end
