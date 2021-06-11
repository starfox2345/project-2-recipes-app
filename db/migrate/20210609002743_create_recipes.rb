class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :ingredient
      t.string :calorie
      t.integer :cook_time
      t.timestamps null: false
    end
  end
end
