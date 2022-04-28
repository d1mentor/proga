class CreateLocationMaterials < ActiveRecord::Migration[7.0]
  def change
    create_table :location_materials do |t|
      t.integer :location_id
      t.integer :material_id
      t.integer :count
      t.integer :price
      t.string :description

      t.timestamps
    end
  end
end
