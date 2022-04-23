class CreateInvestments < ActiveRecord::Migration[7.0]
  def change
    create_table :investments do |t|
      t.string :description
      t.date :inv_date
      t.integer :size

      t.timestamps
    end
  end
end
