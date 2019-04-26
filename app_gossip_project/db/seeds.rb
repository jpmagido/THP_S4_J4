# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

22.times do |variable|
	#User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: "Bonjour, je suis un mongol de type martien qui débarque sur Terre", email: Faker::Internet.email, age: Faker::Number.within(10..80), city_id: Faker::Number.within(1..13))
	#City.create!(name: Faker::Address.city, zip_code: "#{Faker::Number.within(10..95)}000")
	#Gossip.create!(title: "#{Faker::Book.title}", content: "#{Faker::Movie.quote}", user_id: Faker::Number.within(1..13))
	#Tag.create!(title: "##{Faker::Hipster.word}")
	#JoinTableTagGossip.create!(tag_id: Faker::Number.within(1..12), gossip_id: Faker::Number.unique.within(1..22))
	PrivateMessage.create!(content: "Salut mon grand bandit !! tu veux me faire les fesses ? :D", sender_id: Faker::Number.within(1..10), recipient_id: Faker::Number.within(1..10))

end

puts "Tâche effectuée"