class AddDayToPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :is_all_day, :boolean, default: false, null: false
  end
end
