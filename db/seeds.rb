# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Item.destroy_all
Review.destroy_all
Category.destroy_all
User.destroy_all

puts 'Creating categories...'
tools = Category.create!(name: 'tools')
travel = Category.create!(name: 'travel')
clothing = Category.create!(name: 'clothing')
furniture = Category.create!(name: 'furniture')
books = Category.create!(name: 'books')
garden = Category.create!(name: 'garden')
electronics = Category.create!(name: 'electronics')
catering = Category.create!(name: 'catering')
home = Category.create!(name: 'home')
pets = Category.create!(name: 'pets')



puts 'Creating users...'
sam = User.create!(email: "sam@gmail.com",
                   address: '19 Henryson Road, London, SE4 1HL',
                   password: "1")

ben = User.create!(email: "ben@gmail.com",
                  address: '408 Brockley Rd, Brockley, London SE4 2DH',
                  password: "1")

wes = User.create!(email: "wes@gmail.com",
                  address: '80 Ladywell Rd, Ladywell, London SE13 7HS',
                  password: "1")

dan = User.create!(email: "dan@gmail.com",
                  address: '7 Rushford Road, London',
                  password: "1")

jof = User.create!(email: "jof@gmail.com",
                  address: '20 Amyruth Road, London',
                  password: "1")

hugo = User.create!(email: "hugo@gmail.com",
                  address: '122 Brockley Rise London',
                  password: "1")

fred = User.create!(email: "fred@gmail.com",
                  address: '17 Algernon Road, London',
                  password: "1")

jeff = User.create!(email: "jeff@gmail.com",
                  address: '108 Codrington Hill London',
                  password: "1")

harry = User.create!(email: "harry@gmail.com",
                    address: 'Ivy Road, Brockley, London',
                  password: "1")

url1 = "https://res.cloudinary.com/dxdxz4ttg/image/upload/v1566837904/witdffu5txocwhoqbrpp.jpg"
puts 'Creating items...'
item1 = Item.create!(title: 'Tent',
                     description: 'Can sleep 6 comfortably, or easily sleeps 4 with a large space for a living room area in case the weather turns a bit nasty.',
                     photo: 'https://www.borroclub.co.uk/wp-content/uploads/bfi_thumb/Montana_61-33vw0x41cgi5pxef8qa4ne.jpg',
                     user: sam,
                     category: travel,
                      )
item1.remote_photo_url = url1
item1_id = item1.id

url2 = "https://res.cloudinary.com/dxdxz4ttg/image/upload/v1566837904/witdffu5txocwhoqbrpp.jpg"
item2 = Item.create!(title: 'Tent',
                     description: '141 PIECE PRO COMPLETE TOOL KIT + CASE Screwdriver Socket Hammer Tool Set',
                     photo: 'https://www.borroclub.co.uk/wp-content/uploads/bfi_thumb/Montana_61-33vw0x41cgi5pxef8qa4ne.jpg',
                     user: sam,
                     category: tools,
                      )
item2.remote_photo_url = url2
item2_id = item2.id

url3 = "https://res.cloudinary.com/dxdxz4ttg/image/upload/v1566837904/witdffu5txocwhoqbrpp.jpg"
item3 = Item.create!(title: 'Tent',
                     description: '141 PIECE PRO COMPLETE TOOL KIT + CASE Screwdriver Socket Hammer Tool Set',
                     photo: 'https://www.borroclub.co.uk/wp-content/uploads/bfi_thumb/Montana_61-33vw0x41cgi5pxef8qa4ne.jpg',
                     user: sam,
                     category: tools,
                      )
item3.remote_photo_url = url3
item3_id = item3.id

url4 = "https://res.cloudinary.com/dxdxz4ttg/image/upload/v1566837904/witdffu5txocwhoqbrpp.jpg"
item4 = Item.create!(title: 'Tent',
                     description: '141 PIECE PRO COMPLETE TOOL KIT + CASE Screwdriver Socket Hammer Tool Set',
                     photo: 'https://www.borroclub.co.uk/wp-content/uploads/bfi_thumb/Montana_61-33vw0x41cgi5pxef8qa4ne.jpg',
                     user: ben,
                     category: tools,
                      )
item4.remote_photo_url = url4
item4_id = item4.id

url5 = "https://res.cloudinary.com/dxdxz4ttg/image/upload/v1566837904/witdffu5txocwhoqbrpp.jpg"
item5 = Item.create!(title: 'Tent',
                     description: '141 PIECE PRO COMPLETE TOOL KIT + CASE Screwdriver Socket Hammer Tool Set',
                     photo: 'https://www.borroclub.co.uk/wp-content/uploads/bfi_thumb/Montana_61-33vw0x41cgi5pxef8qa4ne.jpg',
                     user: ben,
                     category: tools,
                      )
item5.remote_photo_url = url5
item5_id = item5.id

url6 = "https://res.cloudinary.com/dxdxz4ttg/image/upload/v1566837904/witdffu5txocwhoqbrpp.jpg"
item6 = Item.create!(title: 'Tent',
                     description: '141 PIECE PRO COMPLETE TOOL KIT + CASE Screwdriver Socket Hammer Tool Set',
                     photo: 'https://www.borroclub.co.uk/wp-content/uploads/bfi_thumb/Montana_61-33vw0x41cgi5pxef8qa4ne.jpg',
                     user: ben,
                     category: tools,
                      )
item6.remote_photo_url = url6
item6_id = item6.id


puts 'Creating reviews...'
review1 = Review.create!(title: 'Great tent',
                body: 'What a great find this tent is! Slept 8 teenage boys the size of large adults. Fab you can stand up in it. Easy peasy to assemble- we followed you tube! Highly recommend this!',
                rating: 5,
                date: DateTime.strptime("09/01/2009 19:00", "%m/%d/%Y %H:%M"),
                item: item1
                )
puts 'Finished!'
