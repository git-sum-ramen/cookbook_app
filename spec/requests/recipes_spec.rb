require 'rails_helper'

RSpec.describe "Recipes", type: :request do
  describe "GET /recipes" do
    it "should return an array of recipes" do
      # response = HTTP.get("/api/recipes")
      user = User.create!(
        email: "ray@ray.com",
        name: "raymond",
        password: "password"
      )

      
      Recipe.create!(
        title: "chaarcuterie",
        ingredients: "chard + cuterie",
        directions: "etc etc",
        image_url: "...",
        prep_time: 100,
        user_id: user.id
      )
      Recipe.create!(
        title: "bread",
        ingredients: "flour + yeast + waater?",
        directions: "etc etc",
        image_url: "...",
        prep_time: 200,
        user_id: user.id
      )
      Recipe.create!(
        title: "cheese",
        ingredients: "milk + time??",
        directions: "etc etc",
        image_url: "...",
        prep_time: 300,
        user_id: user.id
      )
      
      
      get "/api/recipes"
      
      recipes = JSON.parse(response.body)
      p "recipes"
      p response.body
      expect(response).to have_http_status(200)
      expect(recipes.length).to eq(3)
    end
  end
end
