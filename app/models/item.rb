class Item < ApplicationRecord
  has_one_attached :picture
  
  validates :picture,
            presence: true
 


end
