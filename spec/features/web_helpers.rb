def sign_in_and_play
  visit('/')
  fill_in('Player1', with: 'Kye')
  fill_in('Player2', with: 'Toby')
  click_button('Submit')
end
