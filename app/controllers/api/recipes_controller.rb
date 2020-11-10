class Api::RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render 'index.json.jb'
  end

  def show
    the_id = params[:id]
    @recipe = Recipe.find_by(id: the_id)
    render 'show.json.jb'
  end

  def create
    # make a new recipe
    @recipe = Recipe.new(
      title: params[:input_title], 
      directions: params[:input_directions], 
      ingredients: params[:input_ingredients], 
      prep_time: params[:input_prep_time],
      image_url: params[:input_image_url],
      chef: params[:input_chef]
    )
    @recipe.save

    render 'show.json.jb'
  end

  def update
    # find recipe
    @recipe = Recipe.last
    # modify it
    @recipe.chef = "johnny appleseed. necause he makes apples"
    @recipe.ingredients = "sun + cold weather"
    @recipe.directions = "wait until fall"
    @recipe.prep_time = 150
    @recipe.image_url = "mary-anne"
    @recipe.title = "apples"
    # save it
    @recipe.save

    render 'show.json.jb'
  end
end
