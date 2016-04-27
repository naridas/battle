feature 'Damages Player 2' do
  scenario 'Attack player 2 and receive confirmation' do
  	sign_in_and_play
  	click_button'Attack'
    expect(page).to have_content 'Grig attacked Omar'
	end
end