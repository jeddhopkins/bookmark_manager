feature 'deleting bookmarks' do
  scenario 'adding and then deleting a bookmark' do
    add_bookmark
    click_button 'Delete new world website'
    expect(page).to_not have_content 'new world website'
  end
end
