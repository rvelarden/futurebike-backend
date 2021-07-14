# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Bike.destroy_all
User.destroy_all
Booking.destroy_all


    User.create(name: "Romina", email: "rominapaola.velarde@gmail.com", password: "email")


    Bike.create(image: "https://cdn.shopify.com/s/files/1/0063/2714/0425/products/BabboeProTrikeXLElectricCargoBike-20202_5408f293-6a43-4d9c-8501-dd8818e9c8b2_800x.jpg?v=1614693261", location: Faker::Address.city, category: "Parcel (Same Day)", price_day: "83", price_week: "96", price_month: "105", price_year: "877", number_of_bikes:Faker::Number.within(range: 1..10))

    Bike.create(image: "https://www.domusweb.it/content/dam/domusweb/en/news/gallery/2021/01/13/cake-and-dometic-partner-up-for-the-future-of-food-delivery/domus-cake-dometic1.jpg", location: Faker::Address.city, category: "Food Delivery", price_day: "83", price_week: "96", price_month: "105", price_year: "877", number_of_bikes:Faker::Number.within(range: 1..10))

    
    4.times do
        Booking.create(bike: Bike.all.sample, pickup_location:Faker::Address.street_address, dropoff_location:Faker::Address.street_address)
    end 

puts "seeded!"