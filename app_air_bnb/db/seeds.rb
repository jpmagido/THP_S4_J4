# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
	City.create!(name: Faker::Address.city)

end
puts "Vous avez crée 10 Cities"

10.times do
	Dog.create!(name: Faker::Name.first_name, city_id: Faker::Number.within(1..10))
	#Dogsitter.create!(name: Faker::Name.first_name, city_id: Faker::Number.within(1..10))
	#Appointment.create!(dog_id: Faker::Number.within(1..10), dogsitter_id: Faker::Number.within(1..10))

end


puts "Tâche effectuée"

# retires les # pour run le seed que tu souhaites