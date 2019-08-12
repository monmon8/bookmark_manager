require 'sinatra/base'


class BookmarkManager < Sinatra::Base

  # get '/' do
  #   "Hello World"
  # end

  get '/' do
    'Book Manager'
  end

  run! if app_file == $0
end 