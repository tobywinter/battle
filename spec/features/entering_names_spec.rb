require 'spec_helper'

feature 'Entering names' do
  scenario 'players fill in their names and see them displayed' do
    visit('/')
    fill_in('Player1', with: "Kye")
    fill_in('Player2', with: "Toby")
    click_button('Submit')
    expect(page).to have_content('Kye vs. Toby: BEGIN!')
  end
end
