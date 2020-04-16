# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."

10.times do
  flat = Flat.create(
    name: Faker::Movies::LordOfTheRings.location,
    address: Faker::Address.street_address,
    description: Faker::Books::Lovecraft.sentence,
    price_per_night: [100..1000].sample,
    number_of_guests: [1..5].sample)
    puts "Created #{flat.name}, #{flat.description}, #{flat.price_per_night}"
end

puts "Finished!"
