class RemoveChefAndAddUserIdToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :user_id, :integer
    remove_column :recipes, :chef, :chef
  end
end
