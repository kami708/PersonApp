class ChangeDatatypeSizeOfSizes < ActiveRecord::Migration[5.2]
  def change
    change_column :sizes, :size, :string
  end
end
