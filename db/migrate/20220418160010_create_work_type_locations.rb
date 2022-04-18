class CreateWorkTypeLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :work_type_locations do |t|
      t.integer :work_type
      t.integer :location
      t.float :amount

      t.timestamps
    end
  end
end
