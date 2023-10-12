class AddColumnToPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :memo, :text
    add_column :posts, :start_at, :datetime, null: false
    add_column :posts, :end_at, :datetime, null: false
  end
end
