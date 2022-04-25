class AddSizeToSalary < ActiveRecord::Migration[7.0]
  def change
    add_column :salaries, :size, :integer
  end
end
