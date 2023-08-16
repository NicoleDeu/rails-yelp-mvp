# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Creating restaurants...'
camparino = Restaurant.new(name: "Camparino", address: "Milano", category: "italian")
camparino.save!

fries = Restaurant.new(name: "Holländische Fritten", address: "Cologne", category: "belgian")
fries.save!

good_child = Restaurant.new(name: "Good Child", address: "Agnesviertel, Cologne", category: "french")
good_child.save!

vegan = Review.new(content: "Best vegan chocolate croissant", rating: 5)
vegan.restaurant = good_child
vegan.save!
puts 'Finished!'
