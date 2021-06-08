class RecipeController < ApplicationController

    get "/recipes" do
        @recipes = Recipe.all
        erb :recipes
    end
end