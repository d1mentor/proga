class AddDefaultValues < ActiveRecord::Migration[7.0]
  def change
    change_column_default :diaries, :size, 0
    change_column_default :investments, :size, 0
    change_column_default :location_materials, :count, 0
    change_column_default :location_materials, :price, 0
    change_column_default :location_work_types, :price, 0
    change_column_default :location_work_types, :size, 0
    change_column_default :location_work_types, :accord_price, 0
    change_column_default :expenditures, :price, 0
    change_column_default :instruments, :price, 0
    change_column_default :payouts, :size, 0
    change_column_default :salaries, :size, 0
    change_column_default :transports, :price, 0
    change_column_default :workers, :rate, 0
  end
end
