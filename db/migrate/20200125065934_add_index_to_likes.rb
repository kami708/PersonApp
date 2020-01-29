class AddIndexToLikes < ActiveRecord::Migration[5.2]
  def change
    add_index :likes, [:user_id, :product_id]
  end
end
