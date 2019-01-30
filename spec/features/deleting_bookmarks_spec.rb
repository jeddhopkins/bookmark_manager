feature 'deleting bookmarks' do
  scenario 'adding and then deleting a bookmark' do
    add_bookmark
    click_button 'Delete bookmark'
    fill_in 'title', with: 'new world website'
    click_button 'Submit'
    expect(page).to_not have_content 'new world website'
  end
end
