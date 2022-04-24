class CreateTransports < ActiveRecord::Migration[7.0]
  def change
    create_table :transports do |t|
      t.string :name
      t.string :description
      t.date :to_date
      t.date :insurance_date

      t.timestamps
    end
  end
end
