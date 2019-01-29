require 'pg'

class Bookmark

  def self.all
    connection = PG.connect( dbname: self.testing? )
    result = connection.exec( "SELECT * FROM bookmarks" )
    result.column_values(1)
  end

  def self.add(url)
    connection = PG.connect( dbname: self.testing? )
    connection.exec("INSERT INTO bookmarks (url) VALUES ('#{url}')")
  end

  private

  def self.testing?
    return 'bookmark_manager_test' if ENV['ENVIRONMENT'] == 'test'
    'bookmark_manager'
  end
end
