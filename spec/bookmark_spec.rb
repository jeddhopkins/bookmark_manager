require 'bookmark'

describe Bookmark do
  let (:add_bookmark) { Bookmark.add("new world website", "www.newwebsite.com")}

  describe "#all" do
    it 'reveals a list of bookmarks' do
      add_to_db
      expect(Bookmark.all).to include(["makers academy", "http://www.makersacademy.com", "1"])
    end
  end

  describe "#add" do
    it 'adds the title & url to the database' do
      add_bookmark
      expect(Bookmark.all).to include(["new world website", "www.newwebsite.com", "1"])
    end
  end

  describe '#delete' do
    it 'deletes the title and url from the database' do
      add_bookmark
      Bookmark.delete(1)
      expect(Bookmark.all).to be_empty
    end
  end

  describe '#update' do
    it 'updates the title and url in the database without deleteing it' do
      add_bookmark
      Bookmark.update("1", "old country website", "www.oldcountry.com")
      expect(Bookmark.all).to include(["old country website", "www.oldcountry.com", "1"])
    end
  end
end
