require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :views, 'app/views'
    enable :sessions
    set :session_secret, ENV['SESSION_SECRET']
    set :show_exceptions, false
  end

  get "/" do
    redirect '/login'
  end

  not_found do
    status 404
    erb :error
  end

  helpers do
    def current_user
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end

  def logged_in?
    !!current_user
  end

private
  def redirect_if_not_logged_in
    if !logged_in?
      redirect '/login'
    
  end
end

end
