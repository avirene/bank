require "sinatra/base"
require ".lib/account"

class Bank < Sinatra::Base
  enable :sessions

  run! if app_file == $0
  
  get "/" do
    erb :index
  end

  post "/account" do
    @account = Account.new
    redirect "/account"
  end
end
