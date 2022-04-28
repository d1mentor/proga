class AddSalaryIdToDiary < ActiveRecord::Migration[7.0]
  def change
    add_column :diaries, :salary_id, :integer
  end
end
