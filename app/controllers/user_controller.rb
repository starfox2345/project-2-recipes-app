class UserController < ApplicationController

    get "/signup" do
        
        erb :'users/signup'
    end

    post '/signup' do
        user = User.new(params)
        user = User.new(email: params[:email], password: params[:password])

        # if !params.all?{|key, value|} value.blank?} || if User.find_by(email: params[:email])

        if user.email.blank? || user.password.blank? || User.find_by_email(params["email"])
            redirect '/signup'
        else
            redirect '/recipes'
        end

    end
end