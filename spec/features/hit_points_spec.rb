require 'spec_helper'

feature 'hit points' do
  scenario "player 1 can see player 2's hitpoints" do
    sign_in_and_play
    expect(page).to have_content("Toby: HP - 50")
  end
  # As Player 1,
  # So I can start to win a game of Battle,
  # I want my attack to reduce Player 2's HP by 10
  scenario "Player 1 attacks and reduces Player 2's HP by 10" do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content("Toby: HP - 40")
  end
end
