class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :description
      t.integer :calorie
      t.integer :ingredient_id
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
