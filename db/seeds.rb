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
travels = Category.create!(name: 'travels')

sam = User.create(email: "sam@gmail.com",
                  password: "1")

puts 'Creating items...'
item1 = Item.create!(title: 'Tent',
                     description: 'Can sleep 6 comfortably, or easily sleeps 4 with a large space for a living room area in case the weather turns a bit nasty.',
                     photo: 'https://www.borroclub.co.uk/wp-content/uploads/bfi_thumb/Montana_61-33vw0x41cgi5pxef8qa4ne.jpg',
                     address: 'Liverpool str, London',
                     longitude: 0.431245252,
                     latitude: -1.432545243,
                     users_id: User.first,
                     categories_id: tools,

                      )

puts 'Creating reviews...'
review1 = Review.create!(title: 'Great tent',
                body: 'What a great find this tent is! Slept 8 teenage boys the size of large adults. Fab you can stand up in it. Easy peasy to assemble- we followed you tube! Highly recommend this!',
                rating: 5,
                date: DateTime.strptime("09/01/2009 19:00", "%m/%d/%Y %H:%M"),
                items_id: item1
                )
puts 'Finished!'
