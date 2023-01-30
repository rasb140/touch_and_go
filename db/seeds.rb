# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Airplane.destroy_all
puts "Airplanes are destroyed"
User.destroy_all
puts "Users are destroyed"

rodrigo = User.create({ first_name: "Rodrigo", last_name: "Borges", email: "rodrigo@rodrigo.com", password: "showcase" })
puts "Rodrigo is created"

plane = Airplane.new({ brand_and_model: "GULFSTREAM G700", weight: 48_806, registration: "N700GS", range: 7_500, speed: "MACH 0.90", max_altitude: 51_000, number_of_engines: 2, pax_capacity: 10, address: "9500-749 Ponta Delgada", daily_price: 240_000})
plane.user = rodrigo
plane.photos.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'gulfstream G700.jpg')), filename: 'gulfstream G700.jpg', content_type: 'image/jpeg')
plane.save
puts "GULFSTREAM G700 is created"

plane = Airplane.new({ brand_and_model: "DASSAULT FALCON 8X", weight: 33_112, registration: "CS-TCR", range: 6_450, speed: "MACH 0.90", max_altitude: 51_000, number_of_engines: 3, pax_capacity: 15, address: "95700 Roissy-en-France, France", daily_price: 200_000 })
plane.user = rodrigo
plane.photos.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'DASSAULT FALCON 8X.png')), filename: 'DASSAULT FALCON 8X.png', content_type: 'image/jpeg')
plane.save
puts "DASSAULT FALCON 8X is created"

plane = Airplane.new({ brand_and_model: "CESSNA 152", weight: 750, registration: "CS-ASP", range: 768, speed: "107 Knots", max_altitude: 14_700, number_of_engines: 1, pax_capacity: 1, address: "Willy-Brandt-Platz 2, 12529 Schönefeld", daily_price: 2_880 })
plane.user = rodrigo
plane.photos.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'Cessna-152-CS-ASP.jpeg')), filename: 'Cessna-152-CS-ASP.jpeg', content_type: 'image/jpeg')
plane.save
puts "CESSNA 152 is created"

plane = Airplane.new({ brand_and_model: "BEECHCRAFT KING AIR 350I", weight: 6_804, registration: "F-KMJG", range: 1806, speed: "312 Knots", max_altitude: 35_000, number_of_engines: 2, pax_capacity: 11, address: "Innsbruck (Airport), 6020 Innsbruck, Austria", daily_price: 54_000 })
plane.user = rodrigo
plane.photos.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'beechcraft_kingair_350i_photo1.jpg__1200x675_q85_crop_subsampling-2_upscale.jpg')), filename: 'beechcraft_kingair_350i_photo1.jpg__1200x675_q85_crop_subsampling-2_upscale.jpg', content_type: 'image/jpeg')
plane.save
puts "BEECHCRAFT KING AIR 350I  is created"

plane = Airplane.new({ brand_and_model: "AIRBUS ACJ 319", weight: 78_200, registration: "G-JFOG", range: 6000, speed: "MACH 0.82", max_altitude: 41_000, number_of_engines: 2, pax_capacity: 50, address: "9500-749 Ponta Delgada", daily_price: 267_600 })
plane.user = rodrigo
plane.photos.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'airbus_acj319neo_side_l_to_r.jpg__1200x675_q85_crop_subsampling-2_upscale.jpg')), filename: 'airbus_acj319neo_side_l_to_r.jpg__1200x675_q85_crop_subsampling-2_upscale.jpg', content_type: 'image/jpeg')
plane.save
puts "AIRBUS ACJ 319 is created"

plane = Airplane.new({ brand_and_model: "VELIS ELECTRO", weight: 600, registration: "CS-AEL", range: 75, speed: "90 Knots", max_altitude: 12_000, number_of_engines: 1, pax_capacity: 1, address: "John F. Kennedy International Airport", daily_price: 1_920 })
plane.user = rodrigo
plane.photos.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'Pipistrel_Velis_Electro_9992.jpg')), filename: 'Pipistrel_Velis_Electro_9992.jpg', content_type: 'image/jpeg')
plane.save
puts "VELIS ELECTRO is created"
