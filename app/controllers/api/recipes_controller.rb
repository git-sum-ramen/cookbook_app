class Api::RecipesController < ApplicationController
  # before_action :authenticate_user, only: [:create, :update, :destroy]
  # before_action :authenticate_user, except: [:index, :show]
  
  def index
    # @recipes = Recipe.all
    p "current_user"
    p current_user
    p "/current_user"
    
    search_term = params[:search]
    if search_term
      @recipes = Recipe.where("title ILIKE '%#{search_term}%'")
    else
      @recipes = Recipe.all
    end

    @recipes = @recipes.order(id: :desc)

    
    render 'index.json.jb'    
  end

  def show
    the_id = params[:id]
    @recipe = Recipe.find_by(id: the_id)    
    render 'show.html.erb'
  end

  def create
    # make a new recipe
    @recipe = Recipe.new(
      title: params[:input_title], 
      directions: params[:input_directions], 
      ingredients: params[:input_ingredients], 
      prep_time: params[:input_prep_time],
      image_url: params[:input_image_url],
      user_id: current_user.id
    )
    @recipe.save

    render 'show.json.jb'
  end

  def update
    # find recipe
    @recipe = Recipe.find_by(id: params[:id])
    # modify it
    @recipe.chef = params[:chef]
    @recipe.ingredients = params[:ingredients]
    @recipe.directions = params[:directions]
    @recipe.prep_time = params[:prep_time]
    @recipe.image_url = params[:image_url]
    @recipe.title = params[:title]
    # save it
    @recipe.save

    render 'show.json.jb'
  end
  
  def destroy
    # finding the recipe
    @recipe = Recipe.find_by(id: params[:id])
    @recipe.destroy
    render json: {message: "Recipe removed"}
  end
end
