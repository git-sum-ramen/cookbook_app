class Recipe < ApplicationRecord
  belongs_to :user
  
  def ingredients_list
    # p "i am in the ingredietns list method"    
    ingredients.split(", ").map {|ingredient| ingredient.capitalize.tr('.', '')}
  end

  def directions_list
    directions.split(", ").map {|ingredient| ingredient.capitalize.tr('.', '')}
  end

  def friendly_created_at
    created_at.strftime("%B, %e, %Y")
  end

  def friendly_prep_time
    hours = prep_time / 60
    minutes = prep_time % 60
    "#{hours} hours #{minutes} minutes"
  end
end
