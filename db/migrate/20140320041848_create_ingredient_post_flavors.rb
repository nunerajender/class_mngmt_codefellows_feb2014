class CreateIngredientPostFlavors < ActiveRecord::Migration
  def change
    create_table :ingredient_post_flavors do |t|
      t.integer :flavor_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
