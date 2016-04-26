feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Grig'
    fill_in :player_2_name, with: 'Omar'
    click_button 'Submit'
    expect(page).to have_content 'Grig vs. Omar'
  end
end