class CreatePayouts < ActiveRecord::Migration[7.0]
  def change
    create_table :payouts do |t|
      t.integer :location_work_type_id
      t.integer :size
      t.date :payout_date

      t.timestamps
    end
  end
end
