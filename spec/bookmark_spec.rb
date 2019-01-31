require 'bookmark'

describe Bookmark do

  describe "#all" do
    it 'reveals a list of bookmarks' do
      add_to_db
      expect(Bookmark.all).to include(["makers academy", "http://www.makersacademy.com", "1"])
    end
  end

  describe "#add" do
    it 'adds the title & url to the database' do
      Bookmark.add("new world website", "www.newwebsite.com")
      expect(Bookmark.all).to include(["new world website", "www.newwebsite.com", "1"])
    end
  end

  describe '#delete' do
    it 'deletes the title and url from the database' do
      Bookmark.add("new world website", "www.newwebsite.com")
      Bookmark.delete(1)
      expect(Bookmark.all).to be_empty
    end
  end

  describe '#update' do
    it 'updates the title and url in the database without deleteing it' do
      Bookmark.add("new world website", "www.newwebsite.com")
      Bookmark.update("1", "old country website", "www.oldcountry.com")
      expect(Bookmark.all).to include(["old country website", "www.oldcountry.com", "1"])
    end
  end
end
