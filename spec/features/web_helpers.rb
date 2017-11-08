
def sign_in_and_play
  visit '/start'
  fill_in('player_1', with:'Dania')
  fill_in('player_2', with:'Ignacio')
  click_on('Fight')
end
