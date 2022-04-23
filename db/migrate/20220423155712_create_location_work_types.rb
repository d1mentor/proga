class CreateLocationWorkTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :location_work_types do |t|
      t.integer :location_id
      t.integer :work_type_id
      t.integer :price
      t.integer :progress
      t.date :start_date
      t.date :finish_date
      t.boolean :paid
      t.integer :size

      t.timestamps
    end
  end
end
