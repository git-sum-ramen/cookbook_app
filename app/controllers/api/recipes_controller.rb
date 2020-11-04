class Api::RecipesController < ApplicationController
  def first
    @recipe = Recipe.first
    render 'first_recipe.json.jb'
  end
end
