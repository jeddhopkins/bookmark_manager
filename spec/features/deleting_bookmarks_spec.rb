feature 'deleting bookmarks' do
  scenario 'adding and then deleting a bookmark' do
    add_bookmark
    click_button 'Delete new world website'
    expect(page).to_not have_link 'new world website', href: 'www.newwebsite.com'
  end
end
