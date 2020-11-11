class Recipe < ApplicationRecord
  def ingredients_list
    # p "i am in the ingredietns list method"    
    ingredients.split(", ").map {|ingredient| ingredient.capitalize.tr('.', '')}
  end
end
