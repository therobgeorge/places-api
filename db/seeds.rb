# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
place = Place.new(name: "Alley Cats", address: "1234 Rabbit St.")
place.save

place = Place.new(name: "Yummy Wok", address: "456 Brandon St.")
place.save

place = Place.new(name: "Grocery Store", address: "756 Whatever Rd. ")
place.save

place = Place.new(name: "The Fake Place", address: "1010 Fake St")
place.save