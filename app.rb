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
    Bookmark.add(params[:url])
    redirect '/bookmarks'
  end

end
