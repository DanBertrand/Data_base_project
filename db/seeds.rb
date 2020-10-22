# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require "faker"



10.times do
	city = City.create(name: Faker::Address.city, zip_code: "#{Faker::Number.number(digits: 5)}")
end

20.times do
	gosip = Gosip.create(title: Faker::Book.title, content: Faker::Lorem.sentences, user: User.find(rand(1..4)))
end

10.times do
	tag = Tag.create(title: "##{Faker::Lorem.characters(number: 10)}")
end

10.times do
	user = User.create!(city: City.find(rand(1..10)), first_name: Faker::Name.last_name, last_name: Faker::Name.last_name, description: Faker::Lorem.sentences, email: Faker::Internet.email, age: rand(0..101) )
end

10.times do
	gosiptag = Gosiptag.create!(gosip: Gosip.find(rand(1..10)), tag: Tag.find(rand(1..10)))
end