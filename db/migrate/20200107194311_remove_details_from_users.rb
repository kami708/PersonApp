class RemoveDetailsFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :first_name, :string
    remove_column :users, :last_name, :string
    remove_column :users, :first_name_kana, :string
    remove_column :users, :last_name_kana, :string
    remove_column :users, :birthdate_year, :string
    remove_column :users, :birthdate_month, :string
    remove_column :users, :birthdate_day, :string
    remove_column :users, :phone_number, :string
  end
end
