class AddAccordToWorker < ActiveRecord::Migration[7.0]
  def change
    add_column :workers, :accord, :boolean
  end
end
