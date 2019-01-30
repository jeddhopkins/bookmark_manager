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
end
