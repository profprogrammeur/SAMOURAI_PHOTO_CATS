class JoinCartItem < ApplicationRecord

  before_create :already_exist?
  after_create :null

  belongs_to :cart
  belongs_to :item
end
