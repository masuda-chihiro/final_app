# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#User.create!(name:  "Example User",
#             email: "example@railstutorial.org",
#             password:              "foobar",
#             password_confirmation: "foobar",
#             admin: true)
#
#99.times do |n|
#  name  = Faker::Name.name
#  email = "example-#{n+1}@railstutorial.org"
#  password = "password"
#  User.create!(name:  name,
#               email: email,
#               password:              password,
#               password_confirmation: password)
#end
#
#100.times do |n|
#    name  = Faker::Name.name
#    email = "example-#{n+1}@railstutorial.org"
#    postal_code = "123-4567"
#    address = Faker::Address.name
#    card_number = "1234567890"
#    Send.create!(name:  name,
#                 email: email,
#                 postal_code: postal_code,
#                 address: address,
#                 card_number: card_number)
#  end
#
#  10.times do
#    company  = Faker::Company.name
#    Company.create!(company:  company)
#  end
#
# 10.times do |n|
#   name = Faker::Commerce.product_name
#   explanation = Faker::Lorem.paragraph
#   price = n*50
#   stock = n*10
#   company_id = n+1
#   Product.create!(name: name,
#                   explanation: explanation,
#                   price: price,
#                   stock: stock,
#                   company_id: company_id)
# end
 5.times do |n|
   quantity = 3
   whether = 1
   user_id = n+1
   send_id = n+1
   product_id = n+1
   Purchase.create!(quantity: quantity,
                   whether: whether,
                   user_id: user_id,
                   send_id: send_id,
                   product_id: product_id)
 end

