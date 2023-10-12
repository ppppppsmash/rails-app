class ChangeDatetimeToPosts < ActiveRecord::Migration[7.1]
  def change
    change_column :posts, :created_at, :datetime, precision: 6, null: false
    change_column :posts, :updated_at, :datetime, precision: 6, null: false
  end
end
