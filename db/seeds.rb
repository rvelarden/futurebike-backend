# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Bike.destroy_all
User.destroy_all
Booking.destroy_all


    User.create(name: "Romina", email: "rominapaola.velarde@gmail.com", password_digest: 'email')


    Bike.create(image: "https://cdn.shopify.com/s/files/1/0063/2714/0425/products/BabboeProTrikeXLElectricCargoBike-20202_5408f293-6a43-4d9c-8501-dd8818e9c8b2_800x.jpg?v=1614693261", location: Faker::Address.city, category: 'Business', price_day: Faker::Commerce.price, price_week: Faker::Commerce.price, price_month: Faker::Commerce.price, price_year: Faker::Number.decimal(l_digits: 3, r_digits: 3))

    Bike.create(image: "https://images.squarespace-cdn.com/content/5b17e0dd3917eea0602b0aa7/1574514733719-0CV01MZ26F8673D1DYBG/tesle-electric-bicycle-designs-4.jpg?content-type=image%2Fjpeg", location: Faker::Address.city, category: 'Personal', price_day: Faker::Commerce.price, price_week: Faker::Commerce.price, price_month: Faker::Commerce.price, price_year: Faker::Number.decimal(l_digits: 3, r_digits: 3))

 
5.times do
    Booking.create(bike: Bike.all.sample, pickup_time:Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :default), dropoff_time:Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :default))
end 

puts "seeded!"