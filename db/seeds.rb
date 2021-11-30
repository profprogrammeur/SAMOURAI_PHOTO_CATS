# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Rating.destroy_all
Comment.destroy_all
JoinOrderItem.destroy_all
JoinCartItem.destroy_all
Item.destroy_all
Category.destroy_all
Order.destroy_all
User.destroy_all


10.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Movie.quote,
    email: Faker::Name.first_name + "@yopmail.com",
    password: "123456",
    password_confirmation: "123456",
    adress: Faker::Address.street_address + " " + Faker::Address.zip_code + " " + Faker::Address.city,
    birthdate: Faker::Date.birthday(min_age: 18, max_age: 65),
    is_admin: false)
end