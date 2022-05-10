class AddBuyDateToTransport < ActiveRecord::Migration[7.0]
  def change
    add_column :transports, :buy_date, :date
    add_column :transports, :price, :integer
  end
end
