class Api::RecipesController < ApplicationController
  # before_action :authenticate_user, only: [:create, :update, :destroy]
  # before_action :authenticate_user, except: [:index, :show]
  
  def index
    @recipes = Recipe.all
    p "current_user"
    p current_user
    p "/current_user"
    
    # search_term = params[:search]
    # if search_term
    #   @recipes = Recipe.where("title ILIKE '%#{search_term}%'")
    # else
    #   @recipes = Recipe.all
    # end

    # @recipes = @recipes.order(id: :desc)

    
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
      title: params[:title], 
      directions: params[:directions], 
      ingredients: params[:ingredients], 
      prep_time: params[:prep_time],
      image_url: params[:image_url],
      user_id: current_user.id
    )
    if @recipe.save
      render 'show.json.jb'      
    else
      render json: {errors: @recipe.errors.full_messages}, status: 422
    end

  end

  def update
    # find recipe
    @recipe = Recipe.find_by(id: params[:id])
    # modify it
    # @recipe.chef = params[:chef]
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
