class Item < ApplicationRecord
  has_one_attached :picture
  
  validates :picture,
            presence: true

  belongs_to :category

  has_many :join_cart_items
  has_many :carts, through: :join_cart_items

  has_many :join_order_items
  has_many :orders, through: :join_order_items

  has_many :comments
  has_many :users, through: :comments

  has_many :rating

end
