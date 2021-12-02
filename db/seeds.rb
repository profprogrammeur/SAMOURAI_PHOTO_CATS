# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Item.destroy_all
5.times do |x|
  puts x
  4.times do |id|
  item = Item.create(title: Faker::TvShows::TwinPeaks.character, description: Faker::TvShows::TwinPeaks.quote, price: Faker::Number.decimal(l_digits: 2), image_url: "chat#{id}.jpg")
  # item = Item.create(title: "Faker::TvShows::TwinPeaks.character", description: "Faker::TvShows::TwinPeaks.quote", price: 21, image_url: "chat.jpg")
  end
end

user = User.create(email: 'lacherlapatte@yopmail.com', password: 'aaaaaa')
