class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #  after_create :welcome_send
    
   after_create :user_cart
  has_one :cart, dependent: :destroy
  has_many :items, through: :carts
  has_many :orders


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable


   

    def welcome_send
      UserMailer.welcome_email(self).deliver_now
    end

    def user_cart
      Cart.create(user_id: self.id)
    end
end
