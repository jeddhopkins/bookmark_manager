require 'sinatra/base'
require './lib/bookmark.rb'

class BookmarkManager < Sinatra::Base

  disable :show_exceptions

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  get '/add' do
    erb :add
  end

  post '/bookmarks' do
    @title = params[:title]
    @url = params[:url]
    Bookmark.add(@title, @url)
    redirect '/bookmarks'
  end

end
