require 'spec_helper'

feature 'hit points' do
  scenario "player 1 can see player 2's hitpoints" do
    sign_in_and_play
    expect(page).to have_content("Toby: HP - 50")
  end
end
