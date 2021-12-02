class User < ApplicationRecord
  has_many :images


  #valivations
  #
  # has_one :cart, dependent: :destroy
  
  # has_many :orders

  # has_many :ratings

  # has_many :comments
  # has_many :users, through: :comments

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         after_create :welcome_send

         def welcome_send
           UserMailer.welcome_email(self).deliver_now
         end
end
