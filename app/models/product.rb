class Product < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id', optional: true
  belongs_to :category
  belongs_to :brand, optional: true
  belongs_to :size, optional: true

  has_many :product_images
  has_many :comments
  
  has_many :likes, dependent: :destroy
  
  

  has_many :product_images, dependent: :destroy, index_errors: true
  accepts_nested_attributes_for :product_images

  def like_user(user_id)
    likes.find_by(user_id: user_id)
  end
  
  private
  
end
