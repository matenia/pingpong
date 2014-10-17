require 'rails_helper'

RSpec.describe "Dashboard", js: true do
  let(:player1) { Player.new(score: 21, user: user1) }
  let(:player2) { Player.new(score: 19, user: user2) }
  let(:user1) { User.create!(name: "User A") }
  let(:user2) { User.create!(name: "User B") }

  let!(:game) { Game.create!(players: [player1, player2]) }

  it "should play and track a single game" do
    visit("/#/dashboard")

    within(".player1") do
      expect(page).to have_content("User A")
      expect(page).to have_content("Winner")
    end

    within(".player2") do
      expect(page).to have_content("User B")
      expect(page).to_not have_content("Winner")
    end
  end
end
