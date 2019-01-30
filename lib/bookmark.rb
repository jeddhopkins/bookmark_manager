require 'pg'

class Bookmark

  def self.all
    initial_connection
    result = @connection.exec( "SELECT * FROM bookmarks" )
    result.column_values(2).zip(result.column_values(1))
  end

  def self.delete(title)
    initial_connection
    @connection.exec("DELETE FROM bookmarks WHERE title='#{title}'" )
  end

  def self.add(title, url)
    initial_connection
    @connection.exec("INSERT INTO bookmarks (title, url) VALUES ('#{title}', '#{url}')")
  end

  private

  def self.initial_connection
    @connection = PG.connect( dbname: testing? )
  end

  def self.testing?
    return 'bookmark_manager_test' if ENV['ENVIRONMENT'] == 'test'
    'bookmark_manager'
  end
end
