class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :adress
      t.string :customer
      t.date :work_start
      t.date :work_finish

      t.timestamps
    end
  end
end
