class AddDiaryDateToDiary < ActiveRecord::Migration[7.0]
  def change
    add_column :diaries, :diary_date, :date
  end
end
