class UserController < ApplicationController

    get "/signup" do
        
        erb :'users/signup'
    end

    post '/signup' do
        user = User.new(params)
        # user = User.new(email: params[:email], password: params[:password])

        # if !params.all?{|key, value|} value.blank?} || if User.find_by(email: params[:email])
        # user.email.blank? || user.password.blank? || User.find_by_email(params["email"])
        if !user.save
            "Incorrect credentials, please try again"
            redirect '/signup'
        else
            user.save
            session[:user_id] = user.id
            redirect '/recipes'
        end

    end

    get '/login' do
        erb :'/users/login'
    end

    post '/login' do
        user = User.find_by_email(params[:email])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect '/recipes'
        end
        redirect '/login'
    end

    post '/logout' do
        session.clear
        redirect "/login"
    end
end