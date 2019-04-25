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
=begin
nbr_input_in_db.times do
	Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, speciality: "Généraliste", zip_code:"75019", city_id: Faker::Number.within(1..12))
	Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: Faker::Number.within(1..12))
	Appointment.create!(date: Faker::Time.between(2.days.ago, Date.today, :day), patient_id: Faker::Number.within(46..69), doctor_id: Faker::Number.within(46..69), city_id: Faker::Number.within(1..12))
end

puts "#{nbr_input_in_db} docteurs crées"
puts "#{nbr_input_in_db} patients crées"
puts "#{nbr_input_in_db} rdv ont été crées"

# le code fonctionne, je l'ai testé.
# 
# S'il y a une erreur lors de l'exécution, 
# tu dois aller modifier patient_id et doctor_id dans le Appointment.create
 


#DEBUT Création des instances Spécialité
3.times do
	Speciality.create!(name: "Cardio")
	Speciality.create!(name: "Psycho")
	Speciality.create!(name: "Osthéo")
end 

puts "9 spé crées"
#FIN Création des instances Spécialité



#DEBUT Création des instances JoinTableDoctorSpeciality
nbr_input_in_db.times do
	JoinTableDoctorSpeciality.create!(speciality_id: Faker::Number.within(1..9), doctor_id: Faker::Number.within(46..79))

end
puts "10 JoinTableDoctorSpeciality crées"
#FIN Création des instances JoinTableDoctorSpeciality



#DEBUT Création des instances City

nbr_input_in_db.times do
	City.create!(name: Faker::Address.city)

end
puts "#{nbr_input_in_db} city crées"
#FIN Création des instances City


=end

