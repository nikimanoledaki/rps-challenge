feature 'Pick move' do
  scenario 'Player chooses Rock and sees computer move and result' do
    sign_in_and_play
    choose 'Rock'
    click_button 'Submit'
    expect(page).to have_content "Your move: Rock"
    expect(page).to have_content "Your opponent's move:"
  end
end
