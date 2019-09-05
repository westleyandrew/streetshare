puts 'Cleaning database...'
Item.destroy_all
Review.destroy_all
Category.destroy_all
Message.destroy_all
Conversation.destroy_all
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
                   password: "123456",
                   first_name: "Sam",
                   last_name: "Semit",
                   photo: "http://icons.iconarchive.com/icons/hopstarter/superhero-avatar/256/Avengers-Iron-Man-icon.png"
                   )

ben = User.create!(email: "ben@gmail.com",
                  address: '408 Brockley Rd, Brockley, London SE4 2DH',
                  password: "123456",
                  first_name: "Ben",
                  last_name: "Mart",
                  photo: "http://icons.iconarchive.com/icons/hopstarter/superhero-avatar/256/Avengers-Thor-icon.png"
                   )

wes = User.create!(email: "wes@gmail.com",
                  address: '80 Ladywell Rd, Ladywell, London SE13 7HS',
                  password: "123456",
                  first_name: "Wes",
                  last_name: "Andrew",
                  photo: "http://icons.iconarchive.com/icons/hopstarter/superhero-avatar/256/Avengers-Hulk-icon.png"
                   )

dan = User.create!(email: "dan@gmail.com",
                  address: '7 Rushford Road, London',
                  password: "123456",
                  first_name: "Dan",
                  last_name: "Duppol",
                  photo: "http://icons.iconarchive.com/icons/hopstarter/superhero-avatar/256/Avengers-Nick-Fury-icon.png"
                  )

jof = User.create!(email: "jof@gmail.com",
                  address: '20 Amyruth Road, London',
                  password: "123456",
                  first_name: "Jof",
                  last_name: "Bezos",
                  photo: "http://icons.iconarchive.com/icons/hopstarter/superhero-avatar/256/Avengers-War-Machine-icon.png"
                  )

hugo = User.create!(email: "hugo@gmail.com",
                  address: '122 Brockley Rise London',
                  password: "123456",
                  first_name: "Hugo",
                  last_name: "Boss",
                  photo: "http://icons.iconarchive.com/icons/hopstarter/superhero-avatar/256/Avengers-Loki-icon.png"
                  )

fred = User.create!(email: "fred@gmail.com",
                  address: '17 Algernon Road, London',
                  password: "123456",
                  first_name: "Fred",
                  last_name: "Martines",
                  photo: "http://icons.iconarchive.com/icons/hopstarter/superhero-avatar/256/Avengers-Captain-America-icon.png"
                  )

jeff = User.create!(email: "jeff@gmail.com",
                  address: '108 Codrington Hill London',
                  password: "123456",
                  first_name: "Jeff",
                  last_name: "Smith",
                  photo: "http://icons.iconarchive.com/icons/hopstarter/superhero-avatar/256/Avengers-Black-Widow-icon.png"
                  )

harry = User.create!(email: "harry@gmail.com",
                  address: 'Ivy Road, Brockley, London',
                  password: "123456",
                  first_name: "Harry",
                  last_name: "Potter",
                  photo: "http://icons.iconarchive.com/icons/hopstarter/superhero-avatar/256/Avengers-Giant-Man-icon.png"
                  )

ali = User.create!(email: "ali@gmail.com",
                  address: 'Peckham Rye Lane, London',
                  password: "123456",
                  first_name: "Ali",
                  last_name: "Smith",
                  photo: "http://icons.iconarchive.com/icons/hopstarter/superhero-avatar/256/Avengers-Hawkeye-icon.png"
                  )

url = "https://lifeundercanvas.co.uk/wp-content/uploads/2018/05/IMG_6821.jpg"
puts 'Creating items...'
item1 = Item.create!(title: 'Tent - Borrow',
                     description: 'Can sleep 6 comfortably, or easily sleeps 4 with a large space for a living room area in case the weather turns a bit nasty. Deposit is £20',
                     user: sam,
                     price: 20,
                     category: travel,
                      )
item1.remote_photo_url = url
item1.save
item1_id = item1.id

url = "https://i.ebayimg.com/images/g/1oMAAOSwAANY5deU/s-l1600.jpg"
item2 = Item.create!(title: 'Trampoline - Borrow',
                     description: 'Rebo 12FT Base Jump Trampoline With Halo II Enclosure. Tool Kit and full Instructions. Only for domestic use. £25 Deposit',
                     user: sam,
                     price: 25,
                     category: garden,
                      )
item2.remote_photo_url = url
item2.save
item2_id = item2.id


url = "https://i.ebayimg.com/images/g/I7oAAOSwxL1cZv0z/s-l1600.jpg"
item3 = Item.create!(title: 'Garden Furniture - Borrow',
                     description: 'The 8-piece outdoor furniture set from Kingfisher Outdoor Living is stylish, contemporary, practical and will look great in any garden or patio setting. It features six preassembled, folding chairs, an easy to assemble table with tempered glass table top and umbrella to protect from the sun. £30 Deposit',
                     user: sam,
                     price: 30,
                     category: garden,
                      )
item3.remote_photo_url = url
item3.save
item3_id = item3.id


url = "https://images-na.ssl-images-amazon.com/images/I/61pCWdaFQJL._SX679_.jpg"
item4 = Item.create!(title: 'Set of Drawers - Free',
                     description: 'Vida Designs Pine Chest of Drawers, 4 Drawer With Metal Handles and Runners, Unique Anti-Bowing Drawer Support, Riano Bedroom Furniture',
                     user: ben,
                     category: furniture,
                      )
item4.remote_photo_url = url
item4.save
item4_id = item4.id

url = "https://images-na.ssl-images-amazon.com/images/I/71O3QnmG1zL._SL1500_.jpg"
item5 = Item.create!(title: 'Bar Chair Set - Free',
                     description: 'SONGMICS Bar Stools Set of 2, Height Adjustable Bar Chairs in Synthetic Leather, 360° Swivel Kitchen Stool with Backrest and Footrest',
                     user: ben,
                     category: furniture,
                      )
item5.remote_photo_url = url
item5.save
item5_id = item5.id

url = "https://i.ebayimg.com/images/g/p-wAAOSwRKldbq0M/s-l1600.jpg"
item6 = Item.create!(title: 'Nintendo Game - Free',
                     description: 'Zelda A Link To The Past Complete Boxed CIB Super Nintendo SNES RARE. COMES WITH BOX PROTECTOR IN PERFECT WORKING ORDER',
                     user: ben,
                     category: electronics,
                      )
item6.remote_photo_url = url
item6.save
item6_id = item6.id

url = "https://upload.wikimedia.org/wikipedia/commons/9/90/MTD_Lawn_Mower.jpg"
item7 = Item.create!(title: 'Lawnmower - Borrow',
                     description: 'TFlymo Speedi-Mo 360C Petrol Lawn Mower, 1500 W, Cutting Width 36 cm. £50 deposit',
                     user: wes,
                     price: 50,
                     category: garden,
                      )
item7.remote_photo_url = url
item7.save
item7_id = item7.id

url = "https://i.ebayimg.com/images/g/9kgAAOSwg65bvESd/s-l1600.jpg"
item8 = Item.create!(title: 'Single Bed - Free',
                     description: '3FT Single Bed Solid Pine Wooden Bed Frame & Mattress Bedroom Furniture. It is a very good quality bed.',
                     user: hugo,
                     category: home,
                      )
item8.remote_photo_url = url
item8.save
item8_id = item8.id


url = "https://i.ebayimg.com/images/g/vXYAAOSwFPpdFgag/s-l1600.jpg"
item9 = Item.create!(title: 'Deck chair - Borrow',
                     description: 'Spear & Jackson 4190NB Elements Digging Spade, Brown',
                     user: hugo,
                     price: 5.50,
                     category: garden,
                      )
item9.remote_photo_url = url
item9.save
item9_id = item9.id

url = "https://i.ebayimg.com/images/g/7gAAAOSwu~FdZVzn/s-l1600.jpg"
item10 = Item.create!(title: 'Television - Borrow',
                     description: 'Panasonic TX-32E302B 720p HD Ready 32-Inch LED TV with Freeview HD - Black (2018 Model) ',
                     user: hugo,
                     price: 100,
                     category: electronics,
                      )
item10.remote_photo_url = url
item10.save
item10_id = item10.id


url = "https://i.ebayimg.com/images/g/Z2wAAOSwl-hdX~U7/s-l1600.jpg"
item11 = Item.create!(title: 'GBA with games - Borrow',
                     description: 'Nintendo Clear Blue Console. Comes with Super Mario and Legend of Zelda.',
                     user: wes,
                     price: 15,
                     category: electronics,
                      )
item11.remote_photo_url = url
item11.save
item11_id = item11.id


url = "https://i.ebayimg.com/images/g/MkUAAOSwq05da9kr/s-l1600.jpg"
item12 = Item.create!(title: 'Cassette Player - Free',
                     description: 'ACE Retro Cassette Radio',
                     user: harry,
                     category: electronics,
                      )
item12.remote_photo_url = url
item12.save
item12_id = item12.id


url = "https://images-na.ssl-images-amazon.com/images/I/91nhdXZB8FL._UY741_.jpg"
item13 = Item.create!(title: 'Old Levis - Free',
                     description: 'Levis Mens 501 s Original Fit Straight Jeans,Blue (Stonewash 0114)-W32/L34',
                     user: jof,
                     category: clothing,
                      )
item13.remote_photo_url = url
item13.save
item13_id = item13.id

url = "https://akm-img-a-in.tosshub.com/indiatoday/images/story/201809/180919_For_Website_newsletter__2_.png?6zHXseCaCKKUVG0BLhJr6fVnE.21q4Ux"
item14 = Item.create!(title: 'Selection of books - Free',
                     description: 'Great selection of books I need to get rid of to make some space. You can see the titles in the photo',
                     user: jof,
                     category: books,
                      )
item14.remote_photo_url = url
item14.save
item14_id = item14.id

url = "https://bookriot.com/wp-content/uploads/2019/06/comics-feature-640x340-2.jpg"
item15 = Item.create!(title: 'Selection of comics - Free',
                     description: 'Getting rid of my sons comics. Free collect or they will go in the bin!!!',
                     user: fred,
                     category: books,
                      )
item15.remote_photo_url = url
item15.save
item15_id = item15.id

url = "http://ironoctopusfitness.com/wp-content/uploads/2017/07/converse.jpg"
item16 = Item.create!(title: 'Old pair of trainers - Free',
                     description: 'Well worn but still have some life in them. Size 5.',
                     user: harry,
                     category: clothing,
                      )
item16.remote_photo_url = url
item16.save
item16_id = item16.id


url = "https://i.ebayimg.com/images/g/F3oAAOSwyWZZQpjK/s-l1600.jpg"
item17 = Item.create!(title: 'Drinks dispenser - Borrow',
                     description: 'Kilner Vintage Drinks Dispenser – 5 Litre.',
                     user: harry,
                     price: 15,
                     category: catering,
                      )
item17.remote_photo_url = url
item17.save
item17_id = item17.id

url = "https://i.ebayimg.com/images/g/62gAAOSwIXZdWtt2/s-l1600.jpg"
item18 = Item.create!(title: 'Old sofa - Free',
                     description: 'Corner sofa dfs brown leather and fawn colour available for collection. It is very large so you will need a van.',
                     user: jeff,
                     category: furniture,
                      )
item18.remote_photo_url = url
item18.save
item18_id = item18.id

url = "https://images-na.ssl-images-amazon.com/images/I/61CqP90HCxL._SL1380_.jpg"
item19 = Item.create!(title: 'Camping Chef Stove - Borrow',
                     description: 'Its two high power burners allow you to cook food to perfection with ease while the third radiant burner underneath is ideal for toasting bread or bacon. Perfect for longer get aways and family cooking.',
                     user: ali,
                     price: 40,
                     category: travel,
                      )
item19.remote_photo_url = url
item19.save
item19_id = item19.id

url = "https://images-na.ssl-images-amazon.com/images/I/61YtkJ3x4mL._SL1222_.jpg"
item20 = Item.create!(title: ' Camping Cookware Kit - Borrow',
                     description: 'Cooking pan & pot made of high quality FDA approved Non-Toxic anodized Aluminum,solid and durable. They can be heated up quickly and evenly to do the delicious food. So you can enjoy the scenery of the trip with families and friends!',
                     user: ali,
                     price: 25,
                     category: travel,
                      )
item20.remote_photo_url = url
item20.save
item20_id = item20.id

url = "https://i.ebayimg.com/images/g/HUsAAOSwohVcNtp8/s-l1600.jpg"
item21 = Item.create!(title: 'Garden Bench - Borrow',
                     description: '2-in-1 Patio Swing Chair 3 Seater Hammock Cushion Bed Tilt Canopy Garden Bench. Quickly and easily converts to a comfortable bed.',
                     user: wes,
                     price: 30,
                     category: garden,
                      )
item21.remote_photo_url = url
item21.save
item21_id = item21.id

url = "https://i.ebayimg.com/images/g/RnoAAOSwBrVa1Ook/s-l1600.jpg"
item22 = Item.create!(title: 'Party Plates - Borrow',
                     description: 'Ideal for childrens parties',
                     user: wes,
                     price: 27,
                     category: catering,
                      )
item22.remote_photo_url = url
item22.save
item22_id = item22.id

url = "https://i.ebayimg.com/images/g/m98AAOSw45xcsFeV/s-l1600.jpg"
item23 = Item.create!(title: 'Cake Stand - Borrow',
                     description: 'Ideal for occasions when you need a cake stand',
                     user: wes,
                     price: 15,
                     category: catering,
                      )
item23.remote_photo_url = url
item23.save
item23_id = item23.id

url = "https://loeffelland.de/wp-content/uploads/2019/03/il_570xN.1597705638_qp71.jpg"
item24 = Item.create!(title: 'Cutlery set - Free',
                     description: 'Cutlery set. Well used but still in good condition',
                     user: ben,
                     category: home,
                      )
item24.remote_photo_url = url
item24.save
item24_id = item24.id

url = "https://imgaz1.chiccdn.com/thumb/large/oaupload/newchic/images/67/BB/0f2bf59c-52cc-4558-8b27-c2533e1cf164.jpg"
item26 = Item.create!(title: 'Cat bed - Free',
                     description: 'Luxury cat bed available. Ours prefers to sleep in a cardboard box.',
                     user: jof,
                     category: pets,
                      )
item26.remote_photo_url = url
item26.save
item26_id = item26.id

url = "https://i.ytimg.com/vi/BgIgKcqPd4k/maxresdefault.jpg"
item27 = Item.create!(title: 'Kittens - Free',
                     description: 'Free to responsible owners. You will need a home visit!!!',
                     user: harry,
                     category: pets,
                      )
item27.remote_photo_url = url
item27.save
item27_id = item27.id

url = "https://i.ebayimg.com/images/g/jMEAAOSwwAldb6VY/s-l1600.jpg"
item28 = Item.create!(title: 'Baby Boy Clothes - Free',
                     description: 'Baby Boy Clothes Bundle 6-9 Months. Good clean condition, from a pet and smoke free home.',
                     user: wes,
                     category: clothing,
                      )
item28.remote_photo_url = url
item28.save
item28_id = item28.id

url = "https://www.lampandlight.co.uk/media/catalog/product/cache/75eed2686e01eb22cb4050b2f40ddf97/4/4/6946_44191_0.jpg"
item29 = Item.create!(title: 'Bankers lamp - Free',
                     description: 'Old lamp we no longer need',
                     user: fred,
                     category: home,
                      )
item29.remote_photo_url = url
item29.save
item29_id = item29.id


url = "https://i.ebayimg.com/images/g/zQsAAOSwf-5db4pT/s-l1600.jpg"
item30 = Item.create!(title: 'Electric Piano - Borrow',
                     description: 'Yamaha P-45 Digital Electric Piano. Also includes bag',
                     user: hugo,
                     price: 40,
                     category: electronics,
                      )
item30.remote_photo_url = url
item30.save
item30_id = item30.id


url = "https://i.ebayimg.com/images/g/-HgAAOSwtkNdaRY~/s-l1600.jpg"
item31 = Item.create!(title: 'Pram and Carrycot - Free',
                     description: 'Our child has now outgrown this pram so free to a good home. In good condition.',
                     user: hugo,
                     category: home,
                      )
item31.remote_photo_url = url
item31.save
item31_id = item31.id

url = "https://i.ebayimg.com/images/g/w3oAAOSwnjZcUbLS/s-l1600.jpg"
item32 = Item.create!(title: '8-berth tent - Borrow',
                     description: 'Extremely spacious 8-berth tent for larger groups. The tent has a peak height of over 200 cm.',
                     user: ali,
                     price: 35,
                     category: travel,
                      )
item32.remote_photo_url = url
item32.save
item32_id = item32.id

url = "https://i.ebayimg.com/images/g/u48AAOSwuOpbZc8Y/s-l1600.jpg"
item33 = Item.create!(title: 'CosmoGrill Barbeque - Borrow',
                     description: 'CosmoGrill Barbecue BBQ Outdoor Charcoal Smoker Portable Grill Garden.',
                     user: jof,
                     price: 60,
                     category: garden,
                      )
item33.remote_photo_url = url
item33.save
item33_id = item33.id

url = "https://i.ebayimg.com/images/g/1fIAAOSwTSldFimq/s-l1600.jpg"
item34 = Item.create!(title: 'Mini Barbeque - Borrow',
                     description: ' Volcann Mini Stainless Steel Flat Pack BBQ / Grill / Firepit / Portable',
                     user: ali,
                     price: 40,
                     category: garden,
                      )
item34.remote_photo_url = url
item34.save
item34_id = item34.id

url = "https://i.ebayimg.com/images/g/5IwAAOSw2QxcdVqJ/s-l1600.jpg"
item35 = Item.create!(title: '4 Burner Barbeque - Borrow',
                     description: 'Barrel 4 Burner Gas Barbecue With Cover & Thermometer. In good condition.',
                     user: ben,
                     price: 50,
                     category: garden,
                      )
item35.remote_photo_url = url
item35.save
item35_id = item35.id

url = "https://i.ebayimg.com/images/g/OPwAAOSw3utY732e/s-l1600.jpg"
item36 = Item.create!(title: '5 Person Tent - Borrow',
                     description: 'There is plenty of space for 5 persons. Taller persons also don´t need to fear because the peak height of is up to 220 cm.',
                     user: jof,
                     price: 30,
                     category: travel,
                      )
item36.remote_photo_url = url
item36.save
item36_id = item36.id

url = "https://i.ebayimg.com/images/g/NN8AAOSwMv9c8RKI/s-l1600.jpg"
item37 = Item.create!(title: 'Family tent - Borrow',
                     description: 'Very spacious 6 person tent and very comfortable. In good condition.',
                     user: sam,
                     price: 40,
                     category: travel,
                      )
item37.remote_photo_url = url
item37.save
item37_id = item37.id


puts 'Creating reviews...'
review1 = Review.create!(title: 'Great tent',
                body: 'What a great find this tent is! Slept 8 teenage boys the size of large adults. Fab you can stand up in it. Easy peasy to assemble- we followed you tube! Highly recommend this!',
                rating: 5,
                date: DateTime.strptime("09/01/2018 19:00", "%m/%d/%Y %H:%M"),
                item: item1
                )

review2 = Review.create!(title: 'Pleasure to deal with Wes - Jeff',
                body: 'I had a last minute rush to cater my sons birthday party and these plates were ideal.',
                rating: 5,
                date: DateTime.strptime("09/01/2018 19:00", "%m/%d/%Y %H:%M"),
                item: item22
                )

review2 = Review.create!(title: 'No hassle at all - Simon.',
                body: 'Great lender and plates came in handy',
                rating: 5,
                date: DateTime.strptime("09/01/2018 19:00", "%m/%d/%Y %H:%M"),
                item: item22
                )

review3 = Review.create!(title: 'Would recommend - Cedric',
                body: 'Lovely plates. Made our party go with a bang',
                rating: 5,
                date: DateTime.strptime("09/01/2018 19:00", "%m/%d/%Y %H:%M"),
                item: item22
                )

review4 = Review.create!(title: 'Great borrow - Frederick',
                body: 'Kept my grandson amused all weekend.',
                rating: 5,
                date: DateTime.strptime("09/01/2018 19:00", "%m/%d/%Y %H:%M"),
                item: item11
                )

review5 = Review.create!(title: 'No hassle at all - George Forbes-Nixon',
                body: 'Ideal to keep one amused',
                rating: 4,
                date: DateTime.strptime("09/01/2018 19:00", "%m/%d/%Y %H:%M"),
                item: item11
                )

review6 = Review.create!(title: 'Would recommend this item - Sarah',
                body: 'Great selection of games',
                rating: 3,
                date: DateTime.strptime("09/01/2018 19:00", "%m/%d/%Y %H:%M"),
                item: item11
                )

review7 = Review.create!(title: 'Super lawnmower - Digby',
                body: 'I managed to mow my lawn in a fraction of the time it usually takes.',
                rating: 4,
                date: DateTime.strptime("09/01/2018 19:00", "%m/%d/%Y %H:%M"),
                item: item7
                )

review8 = Review.create!(title: 'Not too impressed - George Forbes-Nixon',
                body: 'Had to buy my own petrol for the mower!!!',
                rating: 2,
                date: DateTime.strptime("09/01/2018 19:00", "%m/%d/%Y %H:%M"),
                item: item7
                )

review9 = Review.create!(title: 'Super item - Rodney',
                body: 'Very fine mower. Was a godsend this weekend.',
                rating: 5,
                date: DateTime.strptime("09/01/2018 19:00", "%m/%d/%Y %H:%M"),
                item: item7
                )

review10 = Review.create!(title: 'Great stove - Dave',
                body: 'Life saver on my camping weekend',
                rating: 4,
                date: DateTime.strptime("09/01/2018 19:00", "%m/%d/%Y %H:%M"),
                item: item21
                )

review11 = Review.create!(title: 'Lovely little stove - Steve',
                body: 'Pleasure from start to finish',
                rating: 2,
                date: DateTime.strptime("09/01/2018 19:00", "%m/%d/%Y %H:%M"),
                item: item21
                )

review12 = Review.create!(title: 'Top banana - Darren',
                body: 'I made a fantastic breakfast with this stove.',
                rating: 5,
                date: DateTime.strptime("09/01/2018 19:00", "%m/%d/%Y %H:%M"),
                item: item21
                )

review13 = Review.create!(title: 'Handy cakestand - Dylan',
                body: 'Great for my tea party last weekend.',
                rating: 4,
                date: DateTime.strptime("09/01/2018 19:00", "%m/%d/%Y %H:%M"),
                item: item23
                )

review14 = Review.create!(title: 'Can handle lots of cakes - Dorothy',
                body: 'Managed to get 21 cakes on this cakestand. Amazing.',
                rating: 2,
                date: DateTime.strptime("09/01/2018 19:00", "%m/%d/%Y %H:%M"),
                item: item23
                )

review15 = Review.create!(title: 'Great borrow - Dinah',
                body: 'If you need a cake stand urgently this is for you..',
                rating: 5,
                date: DateTime.strptime("09/01/2018 19:00", "%m/%d/%Y %H:%M"),
                item: item23
                )

review16 = Review.create!(title: 'Very helpful owner - Dinah',
                body: 'This barbeque was a great help to us last weekend when we held a party for family and friends. Would recommend',
                rating: 5,
                date: DateTime.strptime("09/01/2018 19:00", "%m/%d/%Y %H:%M"),
                item: item32
                )

puts 'Finished!'
