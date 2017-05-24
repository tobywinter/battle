require 'spec_helper'

feature 'Attack' do
  scenario 'Player 1 attacks player 2 and gets a confirmation' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('Kye attacks Toby!')
  end
end
