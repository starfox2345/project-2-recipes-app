class RecipeController < ApplicationController

    get "/recipes" do
        @recipes = Recipe.all
        erb :'recipes/index'
    end

    get "/recipes/new" do

        erb :'recipes/new'
    end

    get "/recipes/:id" do
        @recipe = Recipe.find(params[:id])
        erb :'recipes/show'
    end

    post "/recipes" do
        @recipe = Recipe.new(name: params[:name])
        @recipe.save
        redirect "/recipes"
    end

    get "/recipes/:id/edit" do

    end

    patch "/recipes/:id" do

    end

    delete "/recipes/:id" do

    end
end