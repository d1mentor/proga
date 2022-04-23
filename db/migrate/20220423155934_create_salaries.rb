class CreateSalaries < ActiveRecord::Migration[7.0]
  def change
    create_table :salaries do |t|
      t.integer :worker_id
      t.date :salary_date

      t.timestamps
    end
  end
end
