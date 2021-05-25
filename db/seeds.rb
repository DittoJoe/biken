require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cristina = User.create(email: 'cristina@example.com', password: '123456')
mikael = User.create(email: 'mikael@example.com', password: '123456')
joe = User.create(email: 'joe@example.com', password: '123456')

5.times do
  name = Faker::Games::Pokemon.name
  details = Faker::Creature::Horse.breed
  Bike.create(name: name, details: details, user_id: rand(1..3))
end
