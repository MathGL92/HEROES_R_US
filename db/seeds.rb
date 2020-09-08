# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning the database..."
Hero.destroy_all
puts "Creating 20 heroes..."
20.times do
  Restaurant.create(
    name: Faker::Superhero.name,
    power: Faker::Superhero.power,
    description: Faker::Superhero.descriptor, 
    address: Faker::Address.city,
    price: 9280
  )
end
puts "Created: #{Hero.count} heroes"