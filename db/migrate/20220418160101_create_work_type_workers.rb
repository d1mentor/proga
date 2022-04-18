class CreateWorkTypeWorkers < ActiveRecord::Migration[7.0]
  def change
    create_table :work_type_workers do |t|
      t.integer :work_type
      t.integer :worker
      t.float :salary

      t.timestamps
    end
  end
end
