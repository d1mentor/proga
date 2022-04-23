class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :adress
      t.date :start_date

      t.timestamps
    end
  end
end
