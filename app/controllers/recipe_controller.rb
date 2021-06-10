class RecipeController < ApplicationController

    get "/recipes" do
        @recipes = Recipe.all
        erb :index
    end

    get "/recipes/:id" do

    end

    get "/recipes/new" do

    end

    post "/recipes" do

    end

    get "/recipes/:id/edit" do

    end

    patch "/recipes/:id" do

    end

    delete "/recipes/:id" do

    end
end