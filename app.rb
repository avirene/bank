require "sinatra/base"

class Bank < Sinatra::base
  enable :sessions

  run! if app_file == $0
  
  get "/" do
    erb :index
  end
end
