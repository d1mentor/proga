class AddAccordToDiary < ActiveRecord::Migration[7.0]
  def change
    add_column :diaries, :accord, :boolean
  end
end
