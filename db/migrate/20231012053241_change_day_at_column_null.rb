class ChangeDayAtColumnNull < ActiveRecord::Migration[7.1]
  def change
    change_column :posts, :is_all_day, :boolean, default: false, null: false
  end
end
