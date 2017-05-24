require 'spec_helper'

feature 'Testing infrastructure' do
  scenario 'Homepage says "Testing infrastructure working!"' do
    visit('/')
    expect(page).to have_content('Testing infrastructure working!')
  end
end
