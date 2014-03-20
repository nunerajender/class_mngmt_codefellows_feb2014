class CreateIngredientPreFlavors < ActiveRecord::Migration
  def change
    create_table :ingredient_pre_flavors do |t|
      t.integer :flavor_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
