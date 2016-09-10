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


User.create([
  { name: Faker::Name.name, email: Faker::Internet.email, password_hash: Faker::Internet.password, school: "The Equality Charter School", school_address: "4140 Hutchinson River Parkway East, Bronx, New York" },
  { name: Faker::Name.name, email: Faker::Internet.email, password_hash: Faker::Internet.password, school: "Hebrew Language Academy Charter School", school_address: "2186 Mill Avenue, Brooklyn, NY" },
  { name: Faker::Name.name, email: Faker::Internet.email, password_hash: Faker::Internet.password, school: "New World Preparatory Charter School", school_address: "26 Sharpe Avenue, Staten Island, NY" },
  { name: Faker::Name.name, email: Faker::Internet.email, password_hash: Faker::Internet.password, school: "Success Academy Union Square", school_address: "40 Irving Place, New York, NY" },
  { name: Faker::Name.name, email: Faker::Internet.email, password_hash: Faker::Internet.password, school: "Growing Up Green Charter School", school_address: "39-37 28th Street, Long Island City, NY" }
])


Location.create([
  { name: 'The Metropolitan Museum of Art', email: Faker::Internet.email, password_hash: Faker::Internet.password, address: '1000 Fifth Avenue, New York, NY', description: Faker::Lorem.paragraph(5), subject: 'Art', accessibility: 'Wheelchair', image_url: 'https://www.artsmart.com/wp-content/uploads/2015/10/metropoliton-museum-of-art-slide-1655x690.jpg'},
  { name: 'Solomon R. Guggenheim Museum', email: Faker::Internet.email, password_hash: Faker::Internet.password, address: '1071 Fifth Avenue, New York, NY', description: Faker::Lorem.paragraph(5), subject: 'Art', accessibility: 'Wheelchair', image_url: 'http://www.smartdestinations.com/img/pt/dest/Nyc/att/Nyc_Att_Solomon_R_Guggenheim_Museum/gallery/Solomon-R-Guggenheim-Museum-2.jpg' },
  { name: 'American Museum of Natural History', email: Faker::Internet.email, password_hash: Faker::Internet.password, address: 'Central Park West and West 79 Street, New York, NY', description: Faker::Lorem.paragraph(5), subject: 'Science', accessibility: 'Wheelchair', image_url: 'http://www.amnh.org/var/ezflow_site/storage/images/media/amnh/images/exhibitions/permanent-exhibitions/biodiversity-and-environment-halls/df.blue-whale_smalldynamiclead/171976-1-eng-US/df.blue-whale_smalldynamiclead_imagelarge.jpg' },
  { name: 'The Museum of Modern Art', email: Faker::Internet.email, password_hash: Faker::Internet.password, address: '11 West 53rd Street, New York, NY', description: Faker::Lorem.paragraph(5), subject: 'Art', accessibility: 'Wheelchair', image_url: 'http://uzeeum.com/wp-content/uploads/2016/08/o-MOMA-facebook-11.jpg' },
  { name: 'Tenement Museum', email: Faker::Internet.email, password_hash: Faker::Internet.password, address: '108 Orchard Street, New York, NY', description: Faker::Lorem.paragraph(5), subject: 'History', accessibility: 'Wheelchair', image_url: 'https://www.tenement.org/images/homepage/slider/slide00.jpg' },
  { name: 'New York Botanical Garden', email: Faker::Internet.email, password_hash: Faker::Internet.password, address: '2900 Southern Boulevard, Bronx, NY', description: Faker::Lorem.paragraph(5), subject: 'Science', accessibility: 'Wheelchair', image_url: 'http://www.smartdestinations.com/img/pt/dest/Nyc/att/Nyc_Att_New_York_Botanical_Garden/gallery/New-York-Botanical-Garden-1.jpg' },
  { name: 'The Bronx Zoo', email: Faker::Internet.email, password_hash: Faker::Internet.password, address: '2300 Southern Boulevard, Bronx, NY', description: Faker::Lorem.paragraph(5), subject: 'Science', accessibility: 'Wheelchair', image_url: 'http://static.spplus.com/pictures/bronx-zoo-v3.jpg' },
  { name: 'Museum of Mathematics', email: Faker::Internet.email, password_hash: Faker::Internet.password, address: '11 East 26th Street, New York, NY', description: Faker::Lorem.paragraph(5), subject: 'Math', accessibility: 'Wheelchair', image_url: 'https://static01.nyt.com/images/2011/06/06/crosswords/NPmomath/NPmomath-blog480.jpg' },
  { name: 'Childrens Museum of Manhattan', email: Faker::Internet.email, password_hash: Faker::Internet.password, address: '212 West 83rd Street, New York, NY', description: Faker::Lorem.paragraph(5), subject: 'Science', accessibility: 'Wheelchair', image_url: 'https://dsgnmomonline.files.wordpress.com/2011/06/cmom06.jpg' },
  { name: 'Intrepid Sea, Air, and Space Museum', email: Faker::Internet.email, password_hash: Faker::Internet.password, address: 'Pier 86, West 46th Street & 12th Avenue, New York, NY', description: Faker::Lorem.paragraph(5), subject: 'History', accessibility: 'Wheelchair', image_url: 'http://www.passcomparison.com/wp-content/uploads/2015/02/intrepid_800400.jpg' }
])

Trip.create([
  { user_id: nil, location_id: 1, date: '10/10/16', start_time: '10:00AM', reserved: false },
  { user_id: nil, location_id: 2, date: '10/10/16', start_time: '10:00AM', reserved: false },
  { user_id: nil, location_id: 3, date: '10/10/16', start_time: '10:00AM', reserved: false },
  { user_id: nil, location_id: 4, date: '10/10/16', start_time: '10:00AM', reserved: false },
  { user_id: nil, location_id: 5, date: '10/10/16', start_time: '10:00AM', reserved: false },
  { user_id: nil, location_id: 6, date: '10/10/16', start_time: '10:00AM', reserved: false },
  { user_id: nil, location_id: 7, date: '10/10/16', start_time: '10:00AM', reserved: false },
  { user_id: nil, location_id: 8, date: '10/10/16', start_time: '10:00AM', reserved: false },
  { user_id: nil, location_id: 9, date: '10/10/16', start_time: '10:00AM', reserved: false },
  { user_id: nil, location_id: 10, date: '10/10/16', start_time: '10:00AM', reserved: false }
])

puts "Created #{User.count} Users"
puts "Created #{Location.count} Locations"
puts "Created #{Trip.count} Trips"
