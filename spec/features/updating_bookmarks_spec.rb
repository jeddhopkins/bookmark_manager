feature 'updating bookmark titles & urls' do
  scenario 'Updates the bookmark title & url' do
    add_bookmark
    click_button 'Update new world website'
    fill_in 'title', with: 'old country website'
    fill_in 'url', with: 'www.oldcountry.com'
    click_button 'Submit'
    expect(page).to_not have_link 'new world website', href: 'www.newwebsite.com'
    expect(page).to have_link 'old country website', href: 'www.oldcountry.com'
  end
end
