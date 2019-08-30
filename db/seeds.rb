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
                   password: "1",
                   first_name: "Sam",
                   last_name: "Semit"
                   )

ben = User.create!(email: "ben@gmail.com",
                  address: '408 Brockley Rd, Brockley, London SE4 2DH',
                  password: "1",
                  first_name: "Ben",
                  last_name: "Mart"
                   )

wes = User.create!(email: "wes@gmail.com",
                  address: '80 Ladywell Rd, Ladywell, London SE13 7HS',
                  password: "1",
                  first_name: "Wes",
                  last_name: "Andrew"
                   )

dan = User.create!(email: "dan@gmail.com",
                  address: '7 Rushford Road, London',
                  password: "1",
                  first_name: "Dan",
                  last_name: "Duppol"
                  )

jof = User.create!(email: "jof@gmail.com",
                  address: '20 Amyruth Road, London',
                  password: "1",
                  first_name: "Jof",
                  last_name: "Bezos"
                  )

hugo = User.create!(email: "hugo@gmail.com",
                  address: '122 Brockley Rise London',
                  password: "1",
                  first_name: "Hugo",
                  last_name: "Boss"
                  )

fred = User.create!(email: "fred@gmail.com",
                  address: '17 Algernon Road, London',
                  password: "1",
                  first_name: "Fred",
                  last_name: "Martines"
                  )

jeff = User.create!(email: "jeff@gmail.com",
                  address: '108 Codrington Hill London',
                  password: "1",
                  first_name: "Jeff",
                  last_name: "Smith"
                  )

harry = User.create!(email: "harry@gmail.com",
                  address: 'Ivy Road, Brockley, London',
                  password: "1",
                  first_name: "Harry",
                  last_name: "Potter"
                  )

ali = User.create!(email: "ali@gmail.com",
                  address: 'Merritt Road, Brockley, London',
                  password: "1",
                  first_name: "Muahmmed",
                  last_name: "Ali"
                  )

url = "https://lifeundercanvas.co.uk/wp-content/uploads/2018/05/IMG_6821.jpg"
puts 'Creating items...'
item1 = Item.create!(title: 'Tent',
                     description: 'Can sleep 6 comfortably, or easily sleeps 4 with a large space for a living room area in case the weather turns a bit nasty. Deposit is £20',
                     user: sam,
                     price: 20,
                     category: travel,
                     address: "138 Kingsland Road, London"
                      )
item1.remote_photo_url = url
item1.save
item1_id = item1.id

url = "https://media.rs-online.com/t_large/F8296568-01.jpg"
item2 = Item.create!(title: 'Toolkit',
                     description: '141 PIECE PRO COMPLETE TOOL KIT + CASE Screwdriver Socket Hammer Tool Set. £25 Deposit',
                     user: sam,
                     price: 25,
                     category: tools,
                     address: "Liverpool street station, London"
                      )
item2.remote_photo_url = url
item2.save
item2_id = item2.id


url = "https://images-na.ssl-images-amazon.com/images/I/8110dlQ6L6L._SL1500_.jpg"
item3 = Item.create!(title: 'Camping cart',
                     description: 'VonHaus Folding Camping Cart with Lining - 4 Wheeled Collapsible Festival Trolley, Portable Garden & DIY Waste Wagon – 70KG Capacity. £30 Deposit',
                     user: sam,
                     price: 30,
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
                     description: 'TFlymo Speedi-Mo 360C Electric Wheeled Lawn Mower, 1500 W, Cutting Width 36 cm. £50 deposit',
                     user: wes,
                     price: 50,
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
                     description: 'Nintendo Clear Blue Console. £15 deposit.',
                     user: hugo,
                     price: 15,
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

url = "https://akm-img-a-in.tosshub.com/indiatoday/images/story/201809/180919_For_Website_newsletter__2_.png?6zHXseCaCKKUVG0BLhJr6fVnE.21q4Ux"
item14 = Item.create!(title: 'Selection of books - free to collect',
                     description: 'Great selection of books I need to get rid of to make some space. You can see the titles in the photo',
                     user: jof,
                     category: books,
                      )
item14.remote_photo_url = url
item14.save
item14_id = item14.id

url = "https://bookriot.com/wp-content/uploads/2019/06/comics-feature-640x340-2.jpg"
item15 = Item.create!(title: 'Selection of comics - free to collect',
                     description: 'Getting rid of my sons comics. Free collect or they will go in the bin!!!',
                     user: fred,
                     category: books,
                      )
item15.remote_photo_url = url
item15.save
item15_id = item15.id

url = "http://ironoctopusfitness.com/wp-content/uploads/2017/07/converse.jpg"
item16 = Item.create!(title: 'Old pair of trainers - free to collect',
                     description: 'Well worn but still have some life in them. Size 5.',
                     user: harry,
                     category: clothing,
                      )
item16.remote_photo_url = url
item16.save
item16_id = item16.id


url = "http://ironoctopusfitness.com/wp-content/uploads/2017/07/converse.jpg"
item17 = Item.create!(title: 'Old pair of trainers - free to collect',
                     description: 'Well worn converse but still have some life in them. Size 5.',
                     user: harry,
                     category: clothing,
                      )
item17.remote_photo_url = url
item17.save
item17_id = item17.id

url = "https://www.oldbootsofas.com/images/products/zoom/1406808166-22760200.jpg"
item18 = Item.create!(title: 'Old sofa - free to collect',
                     description: 'Large sofa available for collection. It is very large so you will need a van.',
                     user: jeff,
                     category: furniture,
                      )
item18.remote_photo_url = url
item18.save
item18_id = item18.id

url = "https://images-na.ssl-images-amazon.com/images/I/61CqP90HCxL._SL1380_.jpg"
item19 = Item.create!(title: 'Camping Chef Folding Compact Stove',
                     description: 'Its two high power burners allow you to cook food to perfection with ease while the third radiant burner underneath is ideal for toasting bread or bacon. Perfect for longer get aways and family cooking.',
                     user: ali,
                     category: travel,
                      )
item19.remote_photo_url = url
item19.save
item19_id = item19.id

url = "https://images-na.ssl-images-amazon.com/images/I/61YtkJ3x4mL._SL1222_.jpg"
item20 = Item.create!(title: ' Camping Cookware Kit',
                     description: 'Cooking pan & pot made of high quality FDA approved Non-Toxic anodized Aluminum,solid and durable. They can be heated up quickly and evenly to do the delicious food. So you can enjoy the scenery of the trip with families and friends!',
                     user: ali,
                     category: travel,
                      )
item20.remote_photo_url = url
item20.save
item20_id = item20.id

url = "https://images-na.ssl-images-amazon.com/images/I/61oen7829eL._SL1000_.jpg"
item21 = Item.create!(title: 'Backpacking Stove',
                     description: 'Made of strong stainless steel, this camping stove is built to last long even under heavy weight or high heat.',
                     user: ali,
                     category: travel,
                      )
item21.remote_photo_url = url
item21.save
item21_id = item21.id

url = "https://images-na.ssl-images-amazon.com/images/I/71cdzICrLKL._SL1500_.jpg"
item22 = Item.create!(title: 'Stand Fan',
                     description: 'Eco-friendly DC motor uses less energy than a traditional AC motor whilst still providing a powerful air flow',
                     user: ali,
                     category: furniture,
                      )
item22.remote_photo_url = url
item22.save
item22_id = item22.id

# item23 = Item.create!(title: 'Old sofa - free to collect',
#                      description: 'Large sofa available for collection. It is very large so you will need a van.',
#                      user: jeff,
#                      category: furniture,
#                       )
# item23.remote_photo_url = url
# item23.save
# item23_id = item23.id

# item24 = Item.create!(title: 'Old sofa - free to collect',
#                      description: 'Large sofa available for collection. It is very large so you will need a van.',
#                      user: jeff,
#                      category: furniture,
#                       )
# item24.remote_photo_url = url
# item24.save
# item24_id = item24.id

# item26 = Item.create!(title: 'Old sofa - free to collect',
#                      description: 'Large sofa available for collection. It is very large so you will need a van.',
#                      user: jeff,
#                      category: furniture,
#                       )
# item26.remote_photo_url = url
# item26.save
# item26_id = item26.id

# item27 = Item.create!(title: 'Old sofa - free to collect',
#                      description: 'Large sofa available for collection. It is very large so you will need a van.',
#                      user: jeff,
#                      category: furniture,
#                       )
# item27.remote_photo_url = url
# item27.save
# item27_id = item27.id

# item28 = Item.create!(title: 'Old sofa - free to collect',
#                      description: 'Large sofa available for collection. It is very large so you will need a van.',
#                      user: jeff,
#                      category: furniture,
#                       )
# item28.remote_photo_url = url
# item28.save
# item28_id = item28.id

# item29 = Item.create!(title: 'Old sofa - free to collect',
#                      description: 'Large sofa available for collection. It is very large so you will need a van.',
#                      user: jeff,
#                      category: furniture,
#                       )
# item29.remote_photo_url = url
# item29.save
# item29_id = item29.id

# item30 = Item.create!(title: 'Old sofa - free to collect',
#                      description: 'Large sofa available for collection. It is very large so you will need a van.',
#                      user: jeff,
#                      category: furniture,
#                       )
# item30.remote_photo_url = url
# item30.save
# item30_id = item30.id


puts 'Creating reviews...'
review1 = Review.create!(title: 'Great tent',
                body: 'What a great find this tent is! Slept 8 teenage boys the size of large adults. Fab you can stand up in it. Easy peasy to assemble- we followed you tube! Highly recommend this!',
                rating: 5,
                date: DateTime.strptime("09/01/2018 19:00", "%m/%d/%Y %H:%M"),
                item: item1
                )

puts 'Finished!'
