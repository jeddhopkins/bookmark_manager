require 'bookmark'

describe Bookmark do
  # let(:bookmark) {Bookmark.new}

  describe "#all" do
    it 'reveals a list of bookmarks' do
      add_to_db
      expect(Bookmark.all).to include("http://www.makersacademy.com")
    end
  end
end
