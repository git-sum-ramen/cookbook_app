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
      # p "recipes"
      # p response.body
      expect(response).to have_http_status(200)
      expect(recipes.length).to eq(3)
    end
  end

  describe "POST /recipes" do
    it 'should create a new recipe' do
      user = User.create!(
        email: "raychel@ray.com",
        name: "raychel",
        password: "password"
      )
      
      jwt = JWT.encode(
        {
          user_id: user.id, # the data to encode
          exp: 24.hours.from_now.to_i # the expiration time
        },
        Rails.application.credentials.fetch(:secret_key_base), # the secret key
        "HS256" # the encryption algorithm
      )
      
      count = Recipe.count
      post "/api/recipes", params: {
        title: "oatmeal",
        ingredients: "oat+meal",
        directions: "bake it",
        prep_time: 100,
        image_url: ""        
      }, headers: {
        "Authorization" => "Bearer #{jwt}"
      }


      recipe = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(recipe["title"]).to eq('oatmeal')
      expect(Recipe.count).to eq(count + 1)
    end
  end
end
