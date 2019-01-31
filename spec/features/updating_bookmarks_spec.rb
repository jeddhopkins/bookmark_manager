feature 'updating bookmark titles & urls' do
  scenario 'Updates the bookmark title' do
    add_bookmark
    click_button 'Update new world website'
    fill_in 'title', with: 'old country website'
    fill_in 'url', with: 'www.oldcountry.com'
    click_button 'Submit'
    expect(page).to_not have_content "new world website"
    expect(page).to have_content "old country website"
  end
end
