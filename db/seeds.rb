# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



# Vehicle.create!(type_of_vehicle: "car", title: "Beautiful and rare Ferrari", image_url: "www", price_per_day: 100, location: "zurich", brand: "ferrari", model: "La Ferrari spider", description: "awesome", year: 2022, user_id: 1)

reservation = Reservation.new(user_id: 1, vehicle_id: 2)

reservation.start_date = Date.new(2023, 1, 1)
reservation.end_date = Date.new(2023, 1, 2)

reservation.save!
