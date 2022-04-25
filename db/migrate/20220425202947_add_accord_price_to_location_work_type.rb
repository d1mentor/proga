class AddAccordPriceToLocationWorkType < ActiveRecord::Migration[7.0]
  def change
    add_column :location_work_types, :accord_price, :integer
  end
end
