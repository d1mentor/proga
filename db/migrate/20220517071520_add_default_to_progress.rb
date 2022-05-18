class AddDefaultToProgress < ActiveRecord::Migration[7.0]
  def change
    change_column_default :location_work_types, :progress, 1
  end
end
