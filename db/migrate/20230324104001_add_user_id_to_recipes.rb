class AddUserIdToRecipes < ActiveRecord::Migration[6.1]
  def change
    add_reference :recipes, :user, custom_primary_key: true, null: false, foreign_key: true
  end
end
