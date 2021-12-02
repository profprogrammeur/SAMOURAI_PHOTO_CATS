class Item < ApplicationRecord
  has_one_attached :picture
  has_many :carts
  has_many :users, through: :carts

  has_many :join_table_order_items
  has_many :orders, through: :join_table_order_items

  
  validates :picture,
            presence: true
 


end
