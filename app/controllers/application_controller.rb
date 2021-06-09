require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    "Welcome!"
  end

  get "/recipes" do
    @recipes = Recipe.all
      erb :recipes
  end
end
