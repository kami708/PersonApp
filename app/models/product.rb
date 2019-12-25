class Product < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id', optional: true
  belongs_to :category
  has_many :product_images
  has_many :comments
end
