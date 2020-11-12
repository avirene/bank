require "sinatra/base"
require "./lib/account.rb"

class Bank < Sinatra::Base
  enable :sessions

  run! if app_file == $0
  
  get "/" do
    erb :index
  end

  post "/account" do
    session[:account] = Account.new
    redirect "/account"
  end

  get "/account" do
    @account = session[:account]
    erb :account
  end
end
