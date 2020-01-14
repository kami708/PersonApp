class CreateBrands < ActiveRecord::Migration[5.2]
  def change
    create_table :brands do |t|
      t.string :image
      t.string :name
      t.timestamps
    end
  end
end
