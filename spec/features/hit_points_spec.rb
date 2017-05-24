require 'spec_helper'

feature 'hit points' do
  scenario "player 1 can see player 2's hitpoints" do
    visit('/')
    fill_in('Player1', with: 'Kye')
    fill_in('Player2', with: 'Toby')
    click_button('Submit')
    expect(page).to have_content("Toby: HP - 50")
  end
end
