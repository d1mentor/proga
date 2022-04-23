class CreateWorkers < ActiveRecord::Migration[7.0]
  def change
    create_table :workers do |t|
      t.string :name
      t.string :position
      t.integer :rate
      t.string :adress
      t.string :phone
      t.string :email
      t.string :status
      t.string :skills

      t.timestamps
    end
  end
end
