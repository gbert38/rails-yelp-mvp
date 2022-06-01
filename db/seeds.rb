# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "japanese"}
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian"}
zafron = { name: "Zafron", address: "Mirdif City Center, Dubai", category: "chinese" }
chez_paul = { name: "Chez Paul", address: "21, rue Haxo, 13001 Marseille", category: "belgian"}
mie_caline = { name: "La Mie Câline", address: "16 rue Saint-Ferréol, 13001 Marseille", category: "french" }
[dishoom, pizza_east, zafron, chez_paul, mie_caline].each do |attributes|
  restaurant = Restaurant.create!(attributes) # raise Exception
  puts "Created #{restaurant.name}"
end
puts "Finished!"
