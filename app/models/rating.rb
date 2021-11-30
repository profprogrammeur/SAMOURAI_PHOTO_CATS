class Rating < ApplicationRecord

    before_create :check_if_exist

    has_one :user
    has_one :item
  
   
    
end
