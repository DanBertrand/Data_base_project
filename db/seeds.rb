# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'


10.times do
	city = City.create!(name: Faker::Address.city )
end

10.times do
  doctor = Doctor.create!(first_name: "Dr. #{Faker::Name.first_name}", last_name: Faker::Name.last_name, zip_code: Faker::Number.number(digits: 5), city: City.find(rand(1..10)))
end


10.times do
	patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: City.find(rand(1..10)) )
end


10.times do |i|
    appointment = Appointment.create!(doctor: Doctor.find(rand(1..10)), patient: Patient.find(rand(1..10)), date: Faker::Date.between(from: '2002-09-23', to: '2017-09-25'), city: City.find(rand(1..10)))
end


10.times do
	speciality = Speciality.create!(name: ["generalist", "gynecologue", "surgeon", "dentist", "cancerologist", "orthodontist", "dermatologist", "ophthalmologist"].sample)
end

10.times do
	join_table_doctor_speciality = DoctorSpeciality.create!(doctor: Doctor.find(rand(1..10)), speciality: Speciality.find(rand(1..10)))
end


