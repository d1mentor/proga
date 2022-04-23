class CreateDiaries < ActiveRecord::Migration[7.0]
  def change
    create_table :diaries do |t|
      t.integer :worker_id
      t.integer :location_work_type_id
      t.integer :size
      t.integer :time

      t.timestamps
    end
  end
end
