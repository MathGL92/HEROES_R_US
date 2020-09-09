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
puts "Creating 2 users"


user = User.new(email: "user@user.com", password: "password", username: "BencetheMagpie", last_name: "Fulop", first_name: "Bence")
user_file = URI.open('https://kitt.lewagon.com/placeholder/users/bencefulop')
user.photo.attach(io: user_file, filename: 'bence.jpg', content_type: 'image/jpg')
user.save!


user2 = User.create!(email: "user2@user.com", password: "password", username: "AusMat", last_name: "McCrystal", first_name: "Matthew")
user2_file = URI.open('https://kitt.lewagon.com/placeholder/users/MattMcCrystal')
user2.photo.attach(io: user2_file, filename: 'matthew.jpg', content_type: 'image/jpg')
puts "Created #{User.count} users"



puts "Creating 5 heroes"

hero1 = Hero.new(name: "Mr Strong", power: "Strength", description: "I can lift anything, I'm really strong.", address: "73 Darcy St, Melbourne", price: 300)
hero1.user = user

hero1_file = URI.open('https://images.unsplash.com/photo-1471286174890-9c112ffca5b4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
hero1.photo.attach(io: hero1_file, filename: 'hero1.jpg', content_type: 'image/jpg')
hero1.save!



hero2 = Hero.new(name: "The Teleportman", power: "Teleportation", description: "I can teleport you to anywhere in under 5 seconds, no kidding", address: "57 Flinders Lane, Melbourne", price: 8999)
hero2.user = user
hero2_file = URI.open('https://images.unsplash.com/photo-1589686901292-69c7c0f73d7e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80
')
hero2.photo.attach(io: hero2_file, filename: 'hero2.jpg', content_type: 'image/jpg')
hero2.save!

hero3 = Hero.new(name: "Fireman", power: "Fire Breathing", description: "Do you need to fix your barbeque? I can do that!", address: "17 kerr St, Fitzroy 3065", price: 600)
hero3.user = user
hero3_file = URI.open('https://images.unsplash.com/photo-1581102669483-5f0e38688a2a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80')
hero3.photo.attach(io: hero3_file, filename: 'hero3.jpg', content_type: 'image/jpg')
hero3.save!

hero4 = Hero.new(name: "Maite the Invisible", power: "Invisibility", description: "I'm mighty and invisible", address: "68, Flinders St, Melbourne", price: 4000)
hero4.user = user
hero4_file = URI.open('https://images.unsplash.com/photo-1518531933037-91b2f5f229cc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=564&q=80')
hero4.photo.attach(io: hero4_file, filename: 'hero4.jpg', content_type: 'image/jpg')
hero4.save!


hero5= Hero.new(name: "Butterfly lady", power: "Flight", description: "I will deliver your goods in no time", address: "70 rue des Coudrais, 92330 Sceaux", price: 8700)
hero5.user = user
hero5_file = URI.open('https://images.unsplash.com/photo-1494631781929-c23495644b46?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
hero5.photo.attach(io: hero5_file, filename: 'hero5.jpg', content_type: 'image/jpg')
hero5.save!
puts "Created: #{Hero.count} heroes"
