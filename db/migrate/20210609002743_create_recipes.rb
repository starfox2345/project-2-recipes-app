class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :ingredient
      t.string :user
      t.integer :calories
      t.timestamps null: false
    end
  end
end
