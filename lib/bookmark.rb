require 'pg'

class Bookmark
  def self.all
    connection = PG.connect( dbname: 'bookmark_manager' )
    result = connection.exec( "SELECT * FROM bookmarks" )
    result.column_values(1)
  end
end
