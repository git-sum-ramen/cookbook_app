# chef, title, prep_time, ingredients, directions,

class Recipe
  attr_accessor :chef, :title, :prep_time, :ingredients, :directions
  
  def initialize(input_options)
    @chef = input_options[:chef]
    @title = input_options[:title]
    @prep_time = input_options[:prep_time]
    @ingredients = input_options[:ingredients]
    @directions = input_options[:directions]
  end
end