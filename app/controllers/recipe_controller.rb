class RecipeController < ApplicationController

    get "/recipes" do
        @recipes = Recipe.all
        erb :'recipes/index'
    end

    get "/recipes/new" do
        if !logged_in?
            redirect '/login'
        end
        erb :'recipes/new'
    end

    get "/recipes/:id" do
        @recipe = Recipe.find(params[:id])
        erb :'recipes/show'
    end

    post "/recipes" do
        if !logged_in?
            redirect '/login'
        end
        # @recipe = current_user.recipes.build(params)
        @recipe = Recipe.new(params)
        # recipe.user = current_user
        @recipe.user_id = session[:user_id]
        @recipe.save
        redirect :"/recipes"
    end

    get "/recipes/:id/edit" do
        if !logged_in?
            redirect '/login'
        end
       @recipe = Recipe.find(params[:id])
        if @recipe.user != current_user
        redirect '/recipes'
        end
       erb :'/recipes/edit'
    end

    patch "/recipes/:id" do
        if !logged_in?
            redirect '/login'
        end
        @recipe = Recipe.find(params[:id])
        if @recipe.user != current_user
            redirect '/recipes'
        end
        @recipe.update(params["recipe"])
        redirect :"recipes/#{@recipe.id}"
    end

    delete "/recipes/:id" do
        if !logged_in?
            redirect '/login'
        end
        @recipe = Recipe.find(params[:id])
        if @recipe.user != current_user
            redirect '/recipes'
        end
        @recipe.destroy
        redirect :"/recipes"
    end
end