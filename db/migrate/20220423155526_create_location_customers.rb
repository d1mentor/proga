class CreateLocationCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :location_customers do |t|
      t.integer :location_id
      t.integer :customer_id

      t.timestamps
    end
  end
end
