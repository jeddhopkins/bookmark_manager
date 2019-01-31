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

  post '/add_bookmark' do
    Bookmark.add(params[:title], params[:url])
    redirect '/bookmarks'
  end

  post '/delete_bookmark' do
    Bookmark.delete(params[:id])
    redirect '/bookmarks'
  end

  post '/update' do
    @id = params[:id]
    @title = params[:title]
    @url = params[:url]
    erb :update
  end

  post '/update_bookmark' do
    Bookmark.update(params[:id], params[:title], params[:url])
    redirect '/bookmarks'
  end

end
