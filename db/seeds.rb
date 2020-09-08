# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"


puts "Cleaning the database..."
Hero.destroy_all
User.destroy_all
puts "Creating 1 user"
user = User.create!(email: "user@user.com", password: "password", username: "abc123", last_name: "Tan", first_name: "Lily")
puts "Creating 5 heroes"

hero1 = Hero.new(name: "Lily", power: "Flight", description: "above 1000m high", address: "Melb", price: 600)
hero1.user = user

hero1_file = URI.open('https://images.unsplash.com/photo-1513384312027-9fa69a360337?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80')
hero1.photo.attach(io: hero1_file, filename: 'hero1.jpg', content_type: 'image/jpg')
hero1.save!



hero2 = Hero.new(name: "Monsiue", power: "Psychic", description: "can read minds", address: "EU", price: 400)
hero2.user = user
hero2_file = URI.open('https://images.unsplash.com/photo-1559535332-db9971090158?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
hero2.photo.attach(io: hero2_file, filename: 'hero2.jpg', content_type: 'image/jpg')
hero2.save!

hero3 = Hero.new(name: "Mathew", power: "Fire", description: "better than a flame thrower", address: "JP", price: 600)
hero3.user = user
hero3_file = URI.open('https://images.unsplash.com/photo-1513384312027-9fa69a360337?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80')
hero3.photo.attach(io: hero3_file, filename: 'hero3.jpg', content_type: 'image/jpg')
hero3.save!

hero4 = Hero.new(name: "Bence", power: "Invisibility", description: "you can't see me anywhere", address: "US", price: 700)
hero4.user = user
hero4_file = URI.open('https://images.unsplash.com/photo-1587500154541-1cafd74f0efc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
hero4.photo.attach(io: hero4_file, filename: 'hero4.jpg', content_type: 'image/jpg')
hero4.save!


hero5= Hero.new(name: "Lil", power: "Teleportation", description: "I'm a ninja", address: "Melb", price: 900)
hero5.user = user
hero5_file = URI.open('https://images.unsplash.com/photo-1531907700752-62799b2a3e84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
hero5.photo.attach(io: hero5_file, filename: 'hero5.jpg', content_type: 'image/jpg')
hero5.save!
puts "Created: #{Hero.count} heroes"