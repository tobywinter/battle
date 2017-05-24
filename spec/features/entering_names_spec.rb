require 'spec_helper'

feature 'Entering names' do
  scenario 'players fill in their names and see them displayed' do
    sign_in_and_play
    expect(page).to have_content('Kye vs. Toby: BEGIN!')
  end
end
