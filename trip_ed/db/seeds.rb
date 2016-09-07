# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Location.delete_all
Trip.delete_all

20.times do
  User.create([{
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password_hash: Faker::Internet.password,
    school: Faker::Educator.secondary_school,
    school_address: Faker::Address.street_address + Faker::Address.zip_code }])
end

Location.create([
  { name: 'The Metropolitan Museum of Art', email: Faker::Internet.email, password_hash: Faker::Internet.password, address: '1000 Fifth Avenue', description: Faker::Hipster.sentence, subject: 'Art', accessibility: 'Wheelchair' },
  { name: 'Solomon R. Guggenheim Museum', email: Faker::Internet.email, password_hash: Faker::Internet.password, address: '1071 Fifth Avenue', description: Faker::Hipster.sentence, subject: 'Art', accessibility: 'Wheelchair' },
  { name: 'American Museum of Natural History', email: Faker::Internet.email, password_hash: Faker::Internet.password, address: 'Central Park West and West 79 Street', description: Faker::Hipster.sentence, subject: 'Science', accessibility: 'Wheelchair' },
  { name: 'The Museum of Modern Art', email: Faker::Internet.email, password_hash: Faker::Internet.password, address: '11 West 53rd Street', description: Faker::Hipster.sentence, subject: 'Art', accessibility: 'Wheelchair' },
  { name: 'Tenement Museum', email: Faker::Internet.email, password_hash: Faker::Internet.password, address: '108 Orchard Street', description: Faker::Hipster.sentence, subject: 'History', accessibility: 'Wheelchair' },
  { name: 'New York Botanical Garden', email: Faker::Internet.email, password_hash: Faker::Internet.password, address: '2900 Southern Boulevard', description: Faker::Hipster.sentence, subject: 'Science', accessibility: 'Wheelchair' },
  { name: 'The Bronx Zoo', email: Faker::Internet.email, password_hash: Faker::Internet.password, address: '2300 Southern Boulevard', description: Faker::Hipster.sentence, subject: 'Science', accessibility: 'Wheelchair' },
  { name: 'Museum of Mathematrics', email: Faker::Internet.email, password_hash: Faker::Internet.password, address: '11 East 26th Street', description: Faker::Hipster.sentence, subject: 'Math', accessibility: 'Wheelchair' },
  { name: 'Childrens Museum of Manhattan', email: Faker::Internet.email, password_hash: Faker::Internet.password, address: '212 West 83rd Street', description: Faker::Hipster.sentence, subject: 'Science', accessibility: 'Wheelchair' },
  { name: 'Intrepid Sea, Air, and Space Museum', email: Faker::Internet.email, password_hash: Faker::Internet.password, address: 'Pier 86, West 46th Street & 12th Avenue', description: Faker::Hipster.sentence, subject: 'History', accessibility: 'Wheelchair' }
])


# Trip.create([
#   { user_id: , location_id: 1, date: '10/10/16', start_time: '10:00AM', reserved: false },
#   { user_id: , location_id: 2, date: '10/10/16', start_time: '10:00AM', reserved: false },
#   { user_id: , location_id: 3, date: '10/10/16', start_time: '10:00AM', reserved: false },
#   { user_id: , location_id: 4, date: '10/10/16', start_time: '10:00AM', reserved: false },
#   { user_id: , location_id: 5, date: '10/10/16', start_time: '10:00AM', reserved: false },
#   { user_id: , location_id: 6, date: '10/10/16', start_time: '10:00AM', reserved: false },
#   { user_id: , location_id: 7, date: '10/10/16', start_time: '10:00AM', reserved: false },
#   { user_id: , location_id: 8, date: '10/10/16', start_time: '10:00AM', reserved: false },
#   { user_id: , location_id: 9, date: '10/10/16', start_time: '10:00AM', reserved: false },
#   { user_id: , location_id: 10, date: '10/10/16', start_time: '10:00AM', reserved: false }
# ])

puts "Created #{User.count} Users"
puts "Created #{Location.count} Locations"
# puts "Created #{Trip.count} Trips"
