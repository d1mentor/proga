class AddBuyDateToLocationMaterials < ActiveRecord::Migration[7.0]
  def change
    add_column :location_materials, :buy_date, :date
  end
end
