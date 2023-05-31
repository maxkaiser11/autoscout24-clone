# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)




# reservation = Reservation.new(user_id: 1, vehicle_id: 2)

# reservation.start_date = Date.new(2023, 1, 1)
# reservation.end_date = Date.new(2023, 1, 2)

# reservation.save!


Vehicle.create!(type_of_vehicle: "car", title: "Beautiful Blue Mustang with modified exhaust system", image_url: "https://cdn.motor1.com/images/mgl/P3nLMK/s1/2024-ford-mustang-dark-horse.webp", price_per_day: 400, location: "Kloten", brand: "Ford", model: "Mustang", description: "awesome", year: 2022, user_id: 1)
Vehicle.create!(type_of_vehicle: "car", title: "Brand new Fiat 500", image_url: "https://cdn.panorica.com/sites/default/files/first-image-gallery/Fiat-500-electric-car-2023-003.webp", price_per_day: 70, location: "Fiat Lugano", brand: "Fiat", model: "500", description: "Brand new fiat 500 in babyblue. Great for the city life or lake life.", year: 2023, user_id: 1)
Vehicle.create!(type_of_vehicle: "car", title: "2006 Mercedes CL 500", image_url: "https://images.iconfigurators.app/images/gallery/bgfd_4352.jpg", price_per_day: 100, location: "Munich", brand: "Mercedes Benz", model: "CL 500", description: "Old Mercedes CL 500 in pristine condition", year: 2006, user_id: 1)
Vehicle.create!(type_of_vehicle: "car", title: "New Toyota Yaris GR", image_url: "https://cdn.motor1.com/images/mgl/GMexA/s1/2020-toyota-gr-yaris.jpg", price_per_day: 150, location: "Zurich", brand: "Toyota", model: "Yaris", description: "New Yaris GR which was designed by the Toyota WRC team.", year: 2023, user_id: 1)
Vehicle.create!(type_of_vehicle: "bike", title: "Special Ducati Streetfighter", image_url: "https://images.ctfassets.net/x7j9qwvpvr5s/5kkoPNfevASziIHKnHLCHU/c65326f7dc7f55cf48194b6d952f86a2/Model-Menu-MY23-Ducati-Streetfighter-Lamborghini.png", price_per_day: 250, location: "Milan", brand: "Ducati", model: "Streetfighter V4 Lamborghini", description: "Limited edition Ducati Streetfighter in collaboration with Lamborghini only 500 produced", year: 2023, user_id: 1)
Vehicle.create!(type_of_vehicle: "bike", title: "Ducati Monster +", image_url: "https://images.ctfassets.net/x7j9qwvpvr5s/2ZGl5gvvkXBVLgUnuFdvkl/5e46b9983fb9e9720880466aca4ad766/Ducati-Monster-MY24-overview-hero-1600x1000.jpg?fm=webp&q=90", price_per_day: 150, location: "Milan", brand: "Ducati", model: "Monster +", description: "A slightly bigger version of the standard Ducati Monster. Meaning not only bigger in size but also more powerful.", year: 2023, user_id: 1)
Vehicle.create!(type_of_vehicle: "bike", title: "Ducati XDiavel", image_url: "https://images.ctfassets.net/x7j9qwvpvr5s/4H7EXuGyXj123EST7YYNYb/79fa1313cd4da9fdfabc4a72face0d63/Ducati-Hypermotard-950-RVE-MY24-homepage-hero-1600x1000.png?fm=webp&q=90", price_per_day: 200, location: "Milan", brand: "Ducati", model: "XDiavel Dark", description: "XDiavel is a great all around bike no matter where you love. Comes in a matte black color.", year: 2023, user_id: 1)
Vehicle.create!(type_of_vehicle: "bike", title: "2020 BMW R nineT Pure", image_url: "https://ultimatemotorcycling.com/wp-content/uploads/2020/01/2020-BMW-R-ninet-pure-retro-motorcycle.jpg", price_per_day: 168, location: "Berlin", brand: "BMW", model: "R nineT", description: "BMW is mostly known for their cars but motorcycle fans know that they produce just as amazing motorcylces. This is a perfect example for that.", year: 2023, user_id: 1)
Vehicle.create!(type_of_vehicle: "car", title: "Brand new BMW M3 Touring", image_url: "https://media.autoexpress.co.uk/image/private/s--8XwXznt4--/v1675358629/evo/2023/02/AC%20Schnitzer%20BMW%20M3%20Touring-9.jpg", price_per_day: 800, location: "Zurich", brand: "BMW", model: "M3 Touring", description: "The all new BMW M3 Touring is BMW long awaited competiton for the Audi RS6", year: 2023, user_id: 1)
Vehicle.create!(type_of_vehicle: "car", title: "2023 Mercedes Benz G63s Edition 1", image_url: "https://cdn.motor1.com/images/mgl/1ALLW/s1/2019-mercedes-amg-g63-edition-1.webp", price_per_day: 1200, location: "Zurich", brand: "Mercedes Benz", model: "G63s AMG", description: "2023 Mercedes Benz G Class 63s AMG", year: 2023, user_id: 1)
Vehicle.create!(type_of_vehicle: "car", title: "2023 Porsche GT3 RS", image_url: "https://hips.hearstapps.com/hmg-prod/images/2023-porsche-911-gt3-rs-201-1660575621.jpg?crop=0.704xw:0.791xh;0.111xw,0.142xh&resize=640:*", price_per_day: 2000, location: "Stuttgart", brand: "Porsche", model: "GT3 RS", description: "2023 Porsche GT3 RS in racing grey with the racing strip", year: 2023, user_id: 1)
Vehicle.create!(type_of_vehicle: "car", title: "Range Rover SVR Mansory Edition", image_url: "https://www.mansory.com/sites/default/files/styles/fullwidth_image_with_custom_ratio/public/2019-11/landrover-blue-211119-1.jpg?itok=FoeEP43y", price_per_day: 3000, location: "Dubai", brand: "Range Rover", model: "SVR Mansory Edition", description: "2023 Range Rover SVR modified by Mansory", year: 2023, user_id: 1)
