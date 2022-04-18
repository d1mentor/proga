class CreateWorkerLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :worker_locations do |t|
      t.integer :worker
      t.integer :location
      t.float :hours

      t.timestamps
    end
  end
end
