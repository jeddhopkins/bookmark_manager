feature 'adding bookmarks' do
  scenario 'user adds bookmark with a title and url' do
    add_bookmark
    expect(page).to have_link('new world website', href: 'www.newwebsite.com')
  end
end
