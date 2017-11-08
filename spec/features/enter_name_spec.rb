require 'spec_helper'

describe 'Battle', :type => :feature do
  it 'Testing infrastructure' do
    visit '/'
    expect(page).to have_content 'Testing infrastructure working!'
  end

  it 'accepts two player names' do
    sign_in_and_play
    expect(page).to have_content 'Dania vs Ignacio'
  end

  it 'show\'s players hit points' do
    sign_in_and_play
    expect(page).to have_content('P1: 0/100 P2: 0/100')
  end
end
