require 'spec_helper'

describe 'Battle', :type => :feature do
  # before(:each) { sign_in_and_play }

  # it 'Testing infrastructure' do
  #   visit '/'
  #   expect(page).to have_content 'Testing infrastructure working!'
  # end

  it 'accepts two player names' do
    sign_in_and_play
    expect(page).to have_content 'Dania vs Ignacio'
  end

  it 'show\'s players hit points' do
    sign_in_and_play
    expect(page).to have_content('P1: 0/100 P2: 0/100')
  end

  it 'allows attacks from player 1' do
    sign_in_and_play
    click_on('Attack P2')
    expect(page).to have_content('P1: 0/100 P2: 20/100')
  end

  it 'confirms attack on player 2' do
    sign_in_and_play
    click_on('Attack P2')
    expect(page).to have_content('You have attacked player 2, well done')
  end

  it 'allows attacks from player 2' do
    sign_in_and_play
    click_on('Attack P1')
    expect(page).to have_content('P1: 20/100 P2: 0/100')
  end

  it 'confirms attack on player 1' do
    sign_in_and_play
    click_on('Attack P1')
    expect(page).to have_content('You have attacked player 1, well done')
  end
end
