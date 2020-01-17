class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string  :name,            null: false
      t.text    :description,     null: false
      t.string  :price,           null: false
      t.integer :seller_id,       null: false, foreign_key: true
      t.integer :buyer_id,        foreign_key: true
      t.integer :category_id,     foreign_key: true
      t.integer :brand_id,        foreign_key: true
      t.string  :brand_name
      t.timestamps
    end
  end
end
