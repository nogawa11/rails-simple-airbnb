# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Cleaning..."
Flat.destroy_all

puts "Creating 4 flats..."
# 4.times do
Flat.create!(
  name: "Beautiful Garden Flat in Rivendell",
  address: Faker::Address.street_address,
  description: 'A lovely summer feel for this elegant garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: rand(50..100),
  number_of_guests: rand(1..5),
  image_url: "http://3.bp.blogspot.com/-sYUuTnP9BcE/TsD8fSGXx9I/AAAAAAAAAVg/3oqTmyStaqo/s1600/rivendell.jpg"
)
# end

Flat.create!(
  name: "Cozy Garden Flat in the Shire",
  address: Faker::Address.street_address,
  description: 'A lovely summer feel for this cozy garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: rand(50..100),
  number_of_guests: rand(1..5),
  image_url: "https://www.newzealand.com/assets/Operator-Database/3fc2b5d066/img-1536162697-1401-3228-p-95B514EA-DAAA-9CB0-6839532442B3132A-2544003__aWxvdmVrZWxseQo_CropResizeWzk0MCw1MzAsNzUsImpwZyJd.jpg"
)

Flat.create!(
  name: "Spacious Garden Flat in Hobbiton",
  address: Faker::Address.street_address,
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: rand(50..100),
  number_of_guests: rand(1..5),
  image_url: "https://www.newzealand.com/assets/Operator-Database/15ec6ecd16/img-1536090047-9270-23787-p-712737FA-C006-3464-0C245468FDE5E02E-2544003__aWxvdmVrZWxseQo_CropResizeWzk0MCw1MzAsNzUsImpwZyJd.jpg"
)

Flat.create!(
  name: "Sunny Garden Flat in Minas Tirith",
  address: Faker::Address.street_address,
  description: 'A lovely summer feel for this spacious city flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: rand(50..100),
  number_of_guests: rand(1..5),
  image_url: "https://1.bp.blogspot.com/-WHrNfA3r5UU/Xv5BfOrCNwI/AAAAAAAABC8/aBFImdUV7rMGpl0SAciibRQoeGWFNItgACLcBGAsYHQ/w1200-h630-p-k-no-nu/gandalf-rides-to-minas-tirith.JPG%2521Large.JPG"
)

Flat.create!(
  name: "Exciting Garden Flat in Mordor",
  address: Faker::Address.street_address,
  description: 'A lovely summer feel for this exciting flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: rand(50..100),
  number_of_guests: rand(1..5),
  image_url: "https://cdn.vox-cdn.com/thumbor/rOcuWl3yjt10YimccMrlsWYvgXw=/0x0:1920x796/1200x675/filters:focal(1041x100:1347x406)/cdn.vox-cdn.com/uploads/chorus_image/image/69276237/lotr3_movie_screencaps.com_26241.0.jpg"
)

puts "... created #{Flat.count} flats."
