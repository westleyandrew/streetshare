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

url = "https://lifeundercanvas.co.uk/wp-content/uploads/2018/05/IMG_6821.jpg"
puts 'Creating items...'
item1 = Item.create!(title: 'Tent',
                     description: 'Can sleep 6 comfortably, or easily sleeps 4 with a large space for a living room area in case the weather turns a bit nasty.',
                     user: sam,
                     category: travel,
                      )
item1.remote_photo_url = url
item1.save
item1_id = item1.id

url = "https://media.rs-online.com/t_large/F8296568-01.jpg"
item2 = Item.create!(title: 'Toolkit',
                     description: '141 PIECE PRO COMPLETE TOOL KIT + CASE Screwdriver Socket Hammer Tool Set',
                     user: sam,
                     category: tools,
                      )
item2.remote_photo_url = url
item2.save
item2_id = item2.id


url = "https://images-na.ssl-images-amazon.com/images/I/8110dlQ6L6L._SL1500_.jpg"
item3 = Item.create!(title: 'Camping cart',
                     description: 'VonHaus Folding Camping Cart with Lining - 4 Wheeled Collapsible Festival Trolley, Portable Garden & DIY Waste Wagon – 70KG Capacity',
                     user: sam,
                     category: travel,
                      )
item3.remote_photo_url = url
item3.save
item3_id = item3.id


url = "https://images-na.ssl-images-amazon.com/images/I/61pCWdaFQJL._SX679_.jpg"
item4 = Item.create!(title: 'Set of Drawers - Free to collect',
                     description: 'Vida Designs Pine Chest of Drawers, 4 Drawer With Metal Handles and Runners, Unique Anti-Bowing Drawer Support, Riano Bedroom Furniture',
                     user: ben,
                     category: furniture,
                      )
item4.remote_photo_url = url
item4.save
item4_id = item4.id

url = "https://images-na.ssl-images-amazon.com/images/I/71E0r3ZqjBL._SL1500_.jpg"
item5 = Item.create!(title: 'Bar Chair Set - Free to collect',
                     description: 'SONGMICS Bar Stools Set of 2, Height Adjustable Bar Chairs in Synthetic Leather, 360° Swivel Kitchen Stool with Backrest and Footrest',
                     user: ben,
                     category: furniture,
                      )
item5.remote_photo_url = url
item5.save
item5_id = item5.id

url = "https://images-na.ssl-images-amazon.com/images/I/51rUcCASRfL._SX392_BO1,204,203,200_.jpg"
item6 = Item.create!(title: 'Childrens Encyclopedia - Free to Collect',
                     description: 'The New Childrens Encyclopedia: Packed with Thousands of Facts, Stats, and Illustrations',
                     user: ben,
                     category: books,
                      )
item6.remote_photo_url = url
item6.save
item6_id = item6.id

url = "https://images-na.ssl-images-amazon.com/images/I/81fHVelnRhL._SL1500_.jpg"
item7 = Item.create!(title: 'Lawnmower available to borrow',
                     description: 'TFlymo Speedi-Mo 360C Electric Wheeled Lawn Mower, 1500 W, Cutting Width 36 cm',
                     user: wes,
                     category: garden,
                      )
item7.remote_photo_url = url
item7.save
item7_id = item7.id

url = "https://images-na.ssl-images-amazon.com/images/I/51xZhPXwtLL._SL1181_.jpg"
item8 = Item.create!(title: 'Trusty spade available to borrow',
                     description: 'Spear & Jackson 4190NB Elements Digging Spade, Brown',
                     user: wes,
                     category: garden,
                      )
item8.remote_photo_url = url
item8.save
item8_id = item8.id


url = "https://images-na.ssl-images-amazon.com/images/I/516HkK-UxEL.jpg"
item9 = Item.create!(title: 'Deck chair available to borrow',
                     description: 'Spear & Jackson 4190NB Elements Digging Spade, Brown',
                     user: hugo,
                     category: garden,
                      )
item9.remote_photo_url = url
item9.save
item9_id = item9.id

url = "https://images-na.ssl-images-amazon.com/images/I/61gmnonBaKL._SL1000_.jpg"
item10 = Item.create!(title: 'Television available to borrow',
                     description: 'Panasonic TX-32E302B 720p HD Ready 32-Inch LED TV with Freeview HD - Black (2018 Model) ',
                     user: hugo,
                     category: electronics,
                      )
item10.remote_photo_url = url
item10.save
item10_id = item10.id


url = "https://images-na.ssl-images-amazon.com/images/I/41ZWZ795YML.jpg"
item11 = Item.create!(title: 'Gamaboy Advance with games available to borrow',
                     description: 'Nintendo Clear Blue Console',
                     user: hugo,
                     category: electronics,
                      )
item11.remote_photo_url = url
item11.save
item11_id = item11.id


url = "https://images-na.ssl-images-amazon.com/images/I/71xOHP49ybL._SL1500_.jpg"
item12 = Item.create!(title: 'Old Boombox free to collect',
                     description: 'ACE Retro Cassette Radio',
                     user: harry,
                     category: electronics,
                      )
item12.remote_photo_url = url
item12.save
item12_id = item12.id


url = "https://images-na.ssl-images-amazon.com/images/I/91nhdXZB8FL._UY741_.jpg"
item13 = Item.create!(title: 'Old Levis free to collect',
                     description: 'Levis Mens 501 s Original Fit Straight Jeans,Blue (Stonewash 0114)-W32/L34',
                     user: jof,
                     category: clothing,
                      )
item13.remote_photo_url = url
item13.save
item13_id = item13.id


puts 'Creating reviews...'
review1 = Review.create!(title: 'Great tent',
                body: 'What a great find this tent is! Slept 8 teenage boys the size of large adults. Fab you can stand up in it. Easy peasy to assemble- we followed you tube! Highly recommend this!',
                rating: 5,
                date: DateTime.strptime("09/01/2009 19:00", "%m/%d/%Y %H:%M"),
                item: item1
                )

puts 'Finished!'
