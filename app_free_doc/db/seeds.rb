# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# ***************
nbr_input_in_db = 10
# ***************
#Changes cette variable pour créer le nombre d'entrées que tu souhaites.



nbr_input_in_db.times do
	Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, speciality: "Généraliste", zip_code:"75019")
	Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
	Appointment.create!(date: Faker::Time.between(2.days.ago, Date.today, :day), patient_id: Faker::Number.within(46..69), doctor_id: Faker::Number.within(46..69))

end

puts "#{nbr_input_in_db} docteurs crées"
puts "#{nbr_input_in_db} patients crées"

puts "#{nbr_input_in_db} rdv ont été crées"

# le code fonctionne, je l'ai testé.
# 
# S'il y a une erreur lors de l'exécution, 
# tu dois aller modifier patient_id et doctor_id dans le Appointment.create