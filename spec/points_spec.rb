feature 'Display points' do
  scenario 'See player 2 hit points' do
    visit('/')
    fill_in :player_1_name, with: 'Grig'
    fill_in :player_2_name, with: 'Omar'
    click_button 'Submit'
    expect(page).to have_content 'Omar: 100 HP'

end