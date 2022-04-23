class CreateWorkTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :work_types do |t|
      t.string :name
      t.string :dimension

      t.timestamps
    end
  end
end
