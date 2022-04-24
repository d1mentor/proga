class CreateInstruments < ActiveRecord::Migration[7.0]
  def change
    create_table :instruments do |t|
      t.string :name
      t.string :description
      t.date :buy_date
      t.integer :price
      t.integer :location_id
      t.integer :worker_id

      t.timestamps
    end
  end
end
