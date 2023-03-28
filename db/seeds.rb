# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Message.destroy_all
Chatroom.destroy_all
Suggestion.destroy_all
Request.destroy_all
Item.destroy_all
User.destroy_all

#user seeds

louise = User.create!(email: "louise@example.com", password: "louise_password", first_name: "Louise", last_name: "Dupont")
marie = User.create!(email: "marie@example.com", password: "marie_password", first_name: "Marie", last_name: "Martin")
paula = User.create!(email: "paula@example.com", password: "paula_password", first_name: "Paula", last_name: "Dubois")
elise = User.create!(email: "elise@example.com", password: "elise_password", first_name: "Elise", last_name: "Girard")
emma = User.create!(email: "emma@example.com", password: "emma_password", first_name: "Emma", last_name: "Mannion")

#item seeds

louise_item = Item.new(size: 10, colour: "Multi", occasion: "Casual", category: "Swimwear", brand: "Other", condition: "Used but good", description: "H&M colourful swimming costume", user_id: louise.id)
louise_pic1 = File.open("app/assets/images/lousie_pic1.jpeg")
louise_pic1.resize_to_fit(300, 400)
louise_item.photos.attach([io: louise_pic1, filename: "louise_pic1.jpg", content_type: "image/jeg"])
louise_item.save!
louise_pic2 = File.open("app/assets/images/louise_pic2.jpeg")
louise_item.photos.attach([io: louise_pic2, filename: "louise_pic2.jpg", content_type: "image/jeg"])
louise_item.save!

marie_item_1 = Item.new(size: 14, colour: "Black", occasion: "Party", category: "Dresses", brand: "Gucci", condition: "Like new", description: "Gucci black and red cocktail dress", user_id: marie.id)
marie_item_1_photo_1 = File.open("app/assets/images/marie_item_1_photo_1.jpeg")
marie_item_1.photos.attach([io: marie_item_1_photo_1, filename: "marie_item_1_photo_1", content_type: "image/jeg"])
marie_item_1.save!
marie_item_1_photo_2 = File.open("app/assets/images/marie_item_1_photo_2.jpeg")
marie_item_1.photos.attach([io: marie_item_1_photo_2, filename: "marie_item_1_photo_2", content_type: "image/jeg"])
marie_item_1.save!
marie_item_1_photo_3 = File.open("app/assets/images/marie_item_1_photo_3.jpeg")
marie_item_1.photos.attach([io: marie_item_1_photo_3, filename: "marie_item_1_photo_3", content_type: "image/jeg"])
marie_item_1.save!

marie_item_2 = Item.new(size: 36, colour: "Red", occasion: "Party", category: "Shoes", brand: "Gucci", condition: "Used but good", description: "Gucci red real leather mid height heels", user_id: marie.id)
marie_item_2_photo_1 = File.open("app/assets/images/marie_item_2_photo_1.jpeg")
marie_item_2.photos.attach([io: marie_item_2_photo_1, filename: "marie_item_2_photo_1", content_type: "image/jeg"])
marie_item_2.save!
marie_item_2_photo_2 = File.open("app/assets/images/marie_item_2_photo_2.jpeg")
marie_item_2.photos.attach([io: marie_item_2_photo_2, filename: "marie_item_2_photo_2", content_type: "image/jeg"])
marie_item_2.save!

paula_item = Item.new(size: 40, colour: "Black", occasion: "Formal", category: "Jackets", brand: "Armani", condition: "Like new", description: "Armani black jacket with front detail", user_id: paula.id)
paula_pic1 = File.open("app/assets/images/paula_pic1.jpeg")
paula_item.photos.attach([io: paula_pic1, filename: "paula_pic1.jpg", content_type: "image/jeg"])
paula_item.save!
paula_pic2 = File.open("app/assets/images/paula_pic2.jpeg")
paula_item.photos.attach([io: paula_pic2, filename: "paula_pic2.jpg", content_type: "image/jeg"])
paula_item.save!

elise_item_1 = Item.new(size: 8, colour: "Green", occasion: "Party", category: "Bags", brand: "Zara", condition: "Past its best", description: "Zara green faux leather cross body", user_id: elise.id)
elise_item_1_photo_1 = File.open("app/assets/images/elise_item_1_photo_1.jpeg")
elise_item_1.photos.attach([io: elise_item_1_photo_1, filename: "elise_item_1_photo_1", content_type: "image/jeg"])
elise_item_1.save!
elise_item_1_photo_2 = File.open("app/assets/images/elise_item_1_photo_1.jpeg")
elise_item_1.photos.attach([io: elise_item_1_photo_2, filename: "elise_item_1_photo_2", content_type: "image/jeg"])
elise_item_1.save!

elise_item_2 = Item.new(size: 10, colour: "Black", occasion: "Sport", category: "Trousers", brand: "Adidas", condition: "Past its best", description: "Adidas black sport trousers", user_id: elise.id)
elise_item_2_photo_1 = File.open("app/assets/images/elise_item_2_photo_1.jpeg")
elise_item_2.photos.attach([io: elise_item_2_photo_1, filename: "elise_item_2_photo_1", content_type: "image/jeg"])
elise_item_2.save!
elise_item_2_photo_2 = File.open("app/assets/images/elise_item_2_photo_2.jpeg")
elise_item_2.photos.attach([io: elise_item_2_photo_2, filename: "elise_item_2_photo_2", content_type: "image/jeg"])

emma_item_1 = Item.new(size: 38, colour: "White", occasion: "Sport", category: "Shoes", brand: "Nike", condition: "Used but good", description: "White Nike air force ones", user_id: emma.id)
emma_item_1_photo_1 = File.open("app/assets/images/emma_item_1_photo_1.jpeg")
emma_item_1.photos.attach([io: emma_item_1_photo_1, filename: "emma_item_1_photo_1", content_type: "image/jeg"])
emma_item_1.save!
emma_item_1_photo_2 = File.open("app/assets/images/emma_item_1_photo_2.jpeg")
emma_item_1.photos.attach([io: emma_item_1_photo_2, filename: "emma_item_1_photo_2", content_type: "image/jeg"])
emma_item_1.save!
emma_item_1_photo_3 = File.open("app/assets/images/emma_item_1_photo_3.jpeg")
emma_item_1.photos.attach([io: emma_item_1_photo_3, filename: "emma_item_1_photo_3", content_type: "image/jeg"])
emma_item_1.save!

emma_item_2 = Item.new(size: 8, colour: "Multi", occasion: "Summer", category: "Skirts", brand: "Zara", condition: "Used but good", description: "Floaty floral summer dress, loose fit", user_id: emma.id)
emma_item_2_photo_1 = File.open("app/assets/images/emma_item_2_photo_1.jpeg")
emma_item_2.photos.attach([io: emma_item_2_photo_1, filename: "emma_item_2_photo_1", content_type: "image/jeg"])
emma_item_2.save!
emma_item_2_photo_2 = File.open("app/assets/images/emma_item_2_photo_2.jpeg")
emma_item_2.photos.attach([io: emma_item_2_photo_2, filename: "emma_item_2_photo_2", content_type: "image/jeg"])
emma_item_2.save!

#request seeds

#open
elise_request = Request.create!(title: "Hiking Boots", description: "I am going hiking in Patagonia in July, does anyone have any size 6 hiking boots I could borrow?", user_id: elise.id, start_date: "04/01/2022", end_date: "04/01/2022")
emma_request = Request.create!(title: "Red Dress", description: "I need a dress for Charles birthday party next weekend. I want to wear my new red heels so would love maybe something red?", user_id: emma.id, start_date: "04/01/2022", end_date: "04/01/2022")
emma_request.save!

#item requested
louise_request = Request.create!(title: "Wedding outfit", description: "Hi paula, I have another wedding please could I borrow this again?", user_id: louise.id, item_id: paula_item.id, status: "Item Requested", start_date: "04/01/2022", end_date: "04/01/2022")

#closed

louise_request = Request.create!(title: "Wedding outfit", description: "Hi paula, I have a wedding to attend next week, please could I borrow your jacket?", user_id: louise.id, item_id: paula_item.id, status: "Closed", start_date: "04/01/2022", end_date: "04/01/2022")
paula_request = Request.create!(title: "Sport shirt", description: "Hola amiga, love this top, could I borrow it from you next Weds?", user_id: paula.id, item_id: louise_item.id, status: "Closed", start_date: "04/01/2022", end_date: "04/01/2022")
marie_request = Request.create!(title: "Beach holiday", description: "Hey does anyone have something I could borrow for a beach party?", user_id: marie.id, item_id: emma_item_2.id, status: "Closed", start_date: "04/01/2022", end_date: "04/01/2022")

#suggestion seeds

suggestion_1 = Suggestion.new(request_id: emma_request.id, item_id: marie_item_2.id)
suggestion_2 = Suggestion.new(request_id: emma_request.id, item_id: paula_item.id)
suggestion_3 = Suggestion.new(request_id: marie_request.id, item_id: louise_item.id)
suggestion_4 = Suggestion.new(request_id: marie_request.id, item_id: emma_item_2.id)
suggestion_5 = Suggestion.new(request_id: marie_request.id, item_id: elise_item_1.id)

suggestion_1.save
suggestion_2.save
suggestion_3.save
suggestion_4.save
suggestion_5.save

#chatroom seeds

chatroom1 = Chatroom.create(request_id: marie_request.id)

#message seeds

message1 = Message.create(content: "What do you think of this?", chatroom_id: chatroom1.id, user_id:elise.id)
