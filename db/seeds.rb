# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning the database..."
Hero.destroy_all
User.destroy_all
puts "Creating 1 user"
user = User.create!(email: "user@user.com", password: "password", username: "abc123", last_name: "Tan", first_name: "Lily")
puts "Creating 5 heroes"

hero1 = Hero.new(name: "Lily", power: "Flight", description: "above 1000m high", address: "Melb", price: 600)
hero1.user = user
hero1.save!
hero2 = Hero.new(name: "Monsiue", power: "Psychic", description: "can read minds", address: "EU", price: 400)
hero2.user = user
hero2.save!
hero3 = Hero.new(name: "Mathew", power: "Fire", description: "better than a flame thrower", address: "JP", price: 600)
hero3.user = user
hero3.save!
hero4 = Hero.new(name: "Bence", power: "Invisibility", description: "you can't see me anywhere", address: "US", price: 700)
hero4.user = user
hero4.save!
hero5= Hero.new(name: "Lil", power: "Teleportation", description: "I'm a ninja", address: "Melb", price: 900)
hero5.user = user
hero5.save!
puts "Created: #{Hero.count} heroes"