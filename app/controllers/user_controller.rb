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
            redirect '/signup'
        else
            user.save
            session[:user_id] = user.id
            binding.pry
            redirect '/recipes'
        end

    end

    post '/logout' do
        session.clear
        redirect "/recipes"
    end
end