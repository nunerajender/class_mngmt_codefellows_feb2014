class CreateFlavors < ActiveRecord::Migration
  def change
    create_table :flavors do |t|

      t.timestamps
    end
  end
end
