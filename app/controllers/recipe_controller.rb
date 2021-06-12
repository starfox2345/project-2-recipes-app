class RecipeController < ApplicationController

    get "/recipes" do
        @recipes = Recipe.all
        erb :'recipes/index'
    end

    get "/recipes/new" do
        redirect_if_not_logged_in
        erb :'recipes/new'
    end

    get "/recipes/:id" do
        @recipe = Recipe.find(params[:id])
        erb :'recipes/show'
    end

    post "/recipes" do
        redirect_if_not_logged_in
        # @recipe = current_user.recipes.build(params)
        @recipe = Recipe.new(params)
        # recipe.user = current_user
        @recipe.user_id = session[:user_id]
        @recipe.save
        redirect :"/recipes"
    end

    get "/recipes/:id/edit" do
        redirect_if_not_logged_in
       @recipe = Recipe.find(params[:id])
       redirect_if_not_authorized
       erb :'/recipes/edit'
    end

    patch "/recipes/:id" do
        redirect_if_not_logged_in
        @recipe = Recipe.find(params[:id])
        redirect_if_not_authorized
        @recipe.update(params["recipe"])
        redirect :"recipes/#{@recipe.id}"
    end

    delete "/recipes/:id" do
        redirect_if_not_logged_in
        @recipe = Recipe.find(params[:id])
        redirect_if_not_authorized
        @recipe.destroy
        redirect :"/recipes"
    end

private
def redirect_if_not_authorized
    if @recipe.user != current_user
        redirect '/recipes'
    end
end

end