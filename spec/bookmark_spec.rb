require 'bookmark'

describe Bookmark do
  # let(:bookmark) {Bookmark.new}

  describe "#all" do
    it 'reveals a list of bookmarks' do
      add_to_db
      expect(Bookmark.all).to include("http://www.makersacademy.com")
    end
  end

  describe "#add" do
    it 'adds the url to the db' do
      Bookmark.add("www.newwebsite.com")
      expect(Bookmark.all).to include("www.newwebsite.com")
    end
  end
end
