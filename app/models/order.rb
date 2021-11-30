class Order < ApplicationRecord

  after_create :order_mail
  after_create :order_cart

  belongs_to :user

  has_many :join_order_items
  has_many :items, through: :join_order_items

 
  
end
