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

louise_item = Item.new(size: 10, colour: "Multi", occasion: "Casual", category: "Swimwear", brand: "Other", condition: "Used but good", description: "H&M colourful swimming costume", user_id: louise.id, archived: false)
louise_pic1 = File.open("app/assets/images/lousie_pic1.jpeg")
louise_item.photos.attach([io: louise_pic1, filename: "louise_pic1.jpg", content_type: "image/jeg"])
louise_item.save!
louise_pic2 = File.open("app/assets/images/louise_pic2.jpeg")
louise_item.photos.attach([io: louise_pic2, filename: "louise_pic2.jpg", content_type: "image/jeg"])
louise_item.save!

marie_item_1 = Item.new(size: 14, colour: "Black", occasion: "Party", category: "Dresses", brand: "Gucci", condition: "Like new", description: "Gucci black and red cocktail dress", user_id: marie.id, archived: false)
marie_item_1_photo_1 = File.open("app/assets/images/marie_item_1_photo_1.jpeg")
marie_item_1.photos.attach([io: marie_item_1_photo_1, filename: "marie_item_1_photo_1", content_type: "image/jeg"])
marie_item_1.save!
marie_item_1_photo_2 = File.open("app/assets/images/marie_item_1_photo_2.jpeg")
marie_item_1.photos.attach([io: marie_item_1_photo_2, filename: "marie_item_1_photo_2", content_type: "image/jeg"])
marie_item_1.save!
marie_item_1_photo_3 = File.open("app/assets/images/marie_item_1_photo_3.jpeg")
marie_item_1.photos.attach([io: marie_item_1_photo_3, filename: "marie_item_1_photo_3", content_type: "image/jeg"])
marie_item_1.save!

marie_item_2 = Item.new(size: 36, colour: "Red", occasion: "Party", category: "Shoes", brand: "Gucci", condition: "Used but good", description: "Gucci red real leather mid height heels", user_id: marie.id, archived: false)
marie_item_2_photo_1 = File.open("app/assets/images/marie_item_2_photo_1.jpeg")
marie_item_2.photos.attach([io: marie_item_2_photo_1, filename: "marie_item_2_photo_1", content_type: "image/jeg"])
marie_item_2.save!
marie_item_2_photo_2 = File.open("app/assets/images/marie_item_2_photo_2.jpeg")
marie_item_2.photos.attach([io: marie_item_2_photo_2, filename: "marie_item_2_photo_2", content_type: "image/jeg"])
marie_item_2.save!

paula_item = Item.new(size: 40, colour: "Black", occasion: "Formal", category: "Jackets", brand: "Armani", condition: "Like new", description: "Armani black jacket with front detail", user_id: paula.id, archived: false)
paula_pic1 = File.open("app/assets/images/paula_pic1.jpeg")
paula_item.photos.attach([io: paula_pic1, filename: "paula_pic1.jpg", content_type: "image/jeg"])
paula_item.save!
paula_pic2 = File.open("app/assets/images/paula_pic2.jpeg")
paula_item.photos.attach([io: paula_pic2, filename: "paula_pic2.jpg", content_type: "image/jeg"])
paula_item.save!

elise_item_1 = Item.new(size: 8, colour: "Green", occasion: "Party", category: "Bags", brand: "Zara", condition: "Past its best", description: "Zara green faux leather cross body", user_id: elise.id, archived: false)
elise_item_1_photo_1 = File.open("app/assets/images/elise_item_1_photo_1.jpeg")
elise_item_1.photos.attach([io: elise_item_1_photo_1, filename: "elise_item_1_photo_1", content_type: "image/jeg"])
elise_item_1.save!
elise_item_1_photo_2 = File.open("app/assets/images/elise_item_1_photo_1.jpeg")
elise_item_1.photos.attach([io: elise_item_1_photo_2, filename: "elise_item_1_photo_2", content_type: "image/jeg"])
elise_item_1.save!

elise_item_2 = Item.new(size: 10, colour: "Black", occasion: "Sport", category: "Trousers", brand: "Adidas", condition: "Past its best", description: "Adidas black sport trousers", user_id: elise.id, archived: false)
elise_item_2_photo_1 = File.open("app/assets/images/elise_item_2_photo_1.jpeg")
elise_item_2.photos.attach([io: elise_item_2_photo_1, filename: "elise_item_2_photo_1", content_type: "image/jeg"])
elise_item_2.save!
elise_item_2_photo_2 = File.open("app/assets/images/elise_item_2_photo_2.jpeg")
elise_item_2.photos.attach([io: elise_item_2_photo_2, filename: "elise_item_2_photo_2", content_type: "image/jeg"])

emma_item_1 = Item.new(size: 38, colour: "White", occasion: "Sport", category: "Shoes", brand: "Nike", condition: "Used but good", description: "White Nike air force ones", user_id: emma.id, archived: false)
emma_item_1_photo_1 = File.open("app/assets/images/emma_item_1_photo_1.jpeg")
emma_item_1.photos.attach([io: emma_item_1_photo_1, filename: "emma_item_1_photo_1", content_type: "image/jeg"])
emma_item_1.save!
emma_item_1_photo_2 = File.open("app/assets/images/emma_item_1_photo_2.jpeg")
emma_item_1.photos.attach([io: emma_item_1_photo_2, filename: "emma_item_1_photo_2", content_type: "image/jeg"])
emma_item_1.save!
emma_item_1_photo_3 = File.open("app/assets/images/emma_item_1_photo_3.jpeg")
emma_item_1.photos.attach([io: emma_item_1_photo_3, filename: "emma_item_1_photo_3", content_type: "image/jeg"])
emma_item_1.save!

emma_item_2 = Item.new(size: 8, colour: "Multi", occasion: "Summer", category: "Skirts", brand: "Zara", condition: "Used but good", description: "Floaty floral summer dress, loose fit", user_id: emma.id, archived: false)
emma_item_2_photo_1 = File.open("app/assets/images/emma_item_2_photo_1.jpeg")
emma_item_2.photos.attach([io: emma_item_2_photo_1, filename: "emma_item_2_photo_1", content_type: "image/jeg"])
emma_item_2.save!
emma_item_2_photo_2 = File.open("app/assets/images/emma_item_2_photo_2.jpeg")
emma_item_2.photos.attach([io: emma_item_2_photo_2, filename: "emma_item_2_photo_2", content_type: "image/jeg"])
emma_item_2.save!

elise_red_dress_1 = Item.new(size: 10, colour: "Red", occasion: "Wedding", category: "Dresses", brand: "Zara", condition: "Past its best", description: "Long red dress with pretty knot/bow, good for weddings/formals", user_id: elise.id, archived: false)
elise_red_dress_1_photo_1 = File.open("app/assets/images/red_dress_1_1.jpg")
elise_red_dress_1.photos.attach([io: elise_red_dress_1_photo_1, filename: "red_dress_1_1", content_type: "image/jeg"])
elise_red_dress_1.save!
elise_red_dress_1_photo_2 = File.open("app/assets/images/red_dress_1_2.jpg")
elise_red_dress_1.photos.attach([io: elise_red_dress_1_photo_2, filename: "red_dress_1_2", content_type: "image/jeg"])
elise_red_dress_1.save!

emma_red_dress_1 = Item.new(size: 8, colour: "Red", occasion: "Wedding", category: "Dresses", brand: "Top Shop", condition: "Used but good", description: "Maxi formal dress", user_id: emma.id, archived: false)
emma_red_dress_1_photo_1 = File.open("app/assets/images/red_dress_2_1.jpg")
emma_red_dress_1.photos.attach([io: emma_red_dress_1_photo_1, filename: "red_dress_2_1", content_type: "image/jeg"])
emma_red_dress_1.save!
emma_red_dress_1_photo_2 = File.open("app/assets/images/red_dress_2_2.jpg")
emma_red_dress_1.photos.attach([io: emma_red_dress_1_photo_2, filename: "red_dress_2_2", content_type: "image/jeg"])
emma_red_dress_1.save!

paula_red_dress_1 = Item.new(size: 10, colour: "Red", occasion: "Summer", category: "Dresses", brand: "Mango", condition: "Like new", description: "Cute flowery dress, bit long on me", user_id: paula.id, archived: false)
paula_red_dress_1_photo_1 = File.open("app/assets/images/red_dress_4_1.jpeg")
paula_red_dress_1.photos.attach([io: paula_red_dress_1_photo_1, filename: "red_dress_4_1", content_type: "image/jeg"])
paula_red_dress_1.save!
paula_red_dress_1_photo_2 = File.open("app/assets/images/red_dress_4_2.jpeg")
paula_red_dress_1.photos.attach([io: paula_red_dress_1_photo_2, filename: "red_dress_4_2", content_type: "image/jeg"])
paula_red_dress_1.save!
paula_red_dress_1_photo_3 = File.open("app/assets/images/red_dress_4_3.jpeg")
paula_red_dress_1.photos.attach([io: paula_red_dress_1_photo_3, filename: "red_dress_4_3", content_type: "image/jeg"])
paula_red_dress_1.save!

marie_red_dress_1 = Item.new(size: 12, colour: "Red", occasion: "Wedding", category: "Dresses", brand: "Serafin", condition: "Like new", description: "Formal dress, really long but stunning x", user_id: marie.id, archived: false)
marie_red_dress_1_photo_1 = File.open("app/assets/images/red_dress_5_1.jpeg")
marie_red_dress_1.photos.attach([io: marie_red_dress_1_photo_1, filename: "red_dress_5_1", content_type: "image/jeg"])
marie_red_dress_1.save!
marie_red_dress_1_photo_2 = File.open("app/assets/images/red_dress_5_2.jpeg")
marie_red_dress_1.photos.attach([io: marie_red_dress_1_photo_2, filename: "red_dress_5_2", content_type: "image/jeg"])
marie_red_dress_1.save!
marie_red_dress_1_photo_3 = File.open("app/assets/images/red_dress_5_3.jpeg")
marie_red_dress_1.photos.attach([io: marie_red_dress_1_photo_3, filename: "red_dress_5_3", content_type: "image/jeg"])
marie_red_dress_1.save!

marie_multi_trousers_1 = Item.new(size: 8, colour: "Multi", occasion: "Casual", category: "Trousers", brand: "Salutation Cachée", condition: "Like new", description: "Great for a demo or presentation day", user_id: marie.id, archived: false)
marie_multi_trousers_photo_1 = File.open("app/assets/images/multi_trousers_1_1.jpeg")
marie_multi_trousers_1.photos.attach([io: marie_multi_trousers_photo_1, filename: "multi_trousers_1_1", content_type: "image/jeg"])
marie_multi_trousers_1.save!

louise_hiking_boots_1 = Item.new(size: 6, colour: "Brown", occasion: "Winter", category: "Shoes", brand: "Patagonia", condition: "Used but good", description: "Comfy shoes but not hiking so much since the kid", user_id: louise.id, archived: false)
louise_hiking_boots_1_photo_1 = File.open("app/assets/images/hiking_boots_1_1.jpeg")
louise_hiking_boots_1.photos.attach([io: louise_hiking_boots_1_photo_1, filename: "hiking_boots_1_1", content_type: "image/jeg"])
louise_hiking_boots_1.save!
louise_hiking_boots_1_photo_2 = File.open("app/assets/images/hiking_boots_1_2.jpeg")
louise_hiking_boots_1.photos.attach([io: louise_hiking_boots_1_photo_2, filename: "hiking_boots_1_2", content_type: "image/jeg"])
louise_hiking_boots_1.save!
louise_hiking_boots_1_photo_3 = File.open("app/assets/images/hiking_boots_1_3.jpeg")
louise_hiking_boots_1.photos.attach([io: louise_hiking_boots_1_photo_3, filename: "hiking_boots_1_3", content_type: "image/jeg"])
louise_hiking_boots_1.save!

emma_suit_1 = Item.new(size: 10, colour: "Black", occasion: "Workwear", category: "Suits", brand: "Top Shop", condition: "Like new", description: "Great suit, haven't worn it bc I'm WFH now", user_id: emma.id, archived: false)
emma_suit_1_photo_1 = File.open("app/assets/images/suit_1_1.jpeg")
emma_suit_1.photos.attach([io: emma_suit_1_photo_1, filename: "suit_1_1", content_type: "image/jeg"])
emma_suit_1.save!
emma_suit_1_photo_2 = File.open("app/assets/images/suit_1_2.jpeg")
emma_suit_1.photos.attach([io: emma_suit_1_photo_2, filename: "suit_1_2", content_type: "image/jeg"])
emma_suit_1.save!

louise_suit_1 = Item.new(size: 10, colour: "Black", occasion: "Workwear", category: "Suits", brand: "Esprit", condition: "Like new", description: "Super smart suit! Don't need it since I'm became a developer", user_id: louise.id, archived: false)
louise_suit_1_photo_1 = File.open("app/assets/images/suit_2_1.jpeg")
louise_suit_1.photos.attach([io: louise_suit_1_photo_1, filename: "suit_2_1", content_type: "image/jeg"])
louise_suit_1.save!
louise_suit_1_photo_2 = File.open("app/assets/images/suit_2_2.jpeg")
louise_suit_1.photos.attach([io: louise_suit_1_photo_2, filename: "suit_2_2", content_type: "image/jeg"])
louise_suit_1.save!

emma_bag_1 = Item.new(size: 1, colour: "Black", occasion: "Workwear", category: "Bags", brand: "Esprit", condition: "Like new", description: "Love this bag", user_id: emma.id, archived: false)
emma_bag_1_photo_1 = File.open("app/assets/images/bag1.png")
emma_bag_1.photos.attach([io: emma_bag_1_photo_1, filename: "bag1", content_type: "image/jeg"])
emma_bag_1.save!

marie_bag_1 = Item.new(size: 1, colour: "Black", occasion: "Workwear", category: "Bags", brand: "Top Shop", condition: "Used but good", description: "Cute but never used it", user_id: marie.id, archived: false)
marie_bag_1_photo_1 = File.open("app/assets/images/bag2.png")
marie_bag_1.photos.attach([io: marie_bag_1_photo_1, filename: "bag2", content_type: "image/jeg"])
marie_bag_1.save!

paula_bag_1 = Item.new(size: 1, colour: "Brown", occasion: "Workwear", category: "Bags", brand: "Chanel", condition: "Used but good", description: "Never used it", user_id: paula.id, archived: false)
paula_bag_1_photo_1 = File.open("app/assets/images/bag3.png")
paula_bag_1.photos.attach([io: paula_bag_1_photo_1, filename: "bag3", content_type: "image/jeg"])
paula_bag_1.save!

#request seeds

#open
emma_request = Request.create!(title: "Party Dress", description: "I need a dress for Charles' birthday party next weekend. I want to wear my new red heels so would love maybe something red?", user_id: emma.id, start_date: "04/01/2022", end_date: "04/01/2022")
louise_request = Request.create!(title: "Wedding outfit", description: "Hi, does anyone have a red dress I could borrow for a wedding?", user_id: louise.id, status: "Open", start_date: "04/01/2022", end_date: "04/01/2022")

emma_request.save!

#item requested
elise_request = Request.create!(title: "Hiking Boots", description: "Hi Louise, I am going hiking in Patagonia can I borow these boots?", user_id: elise.id, item_id: louise_hiking_boots_1.id, status: "Item Requested", start_date: "04/01/2022", end_date: "04/01/2022")
marie_request_1 = Request.create!(title: "J&A's wedding", description: "Hey guys, I kinda wanted to wear a suit to the wedding (??) can anyone suggest something nice", user_id: marie.id, item_id: emma_suit_1.id, status: "Item Requested", start_date: "04/01/2022", end_date: "04/01/2022")

#closed
louise_request_1 = Request.create!(title: "Smart bag?", description: "Can I borrow this bag", user_id: louise.id, item_id: paula_bag_1.id, status: "Closed", start_date: "04/01/2022", end_date: "04/01/2022")
emma_request_1 = Request.create!(title: "Party!", description: "Party this Friday? Have a big presentation and wanna celebrate", user_id: emma.id, item_id: paula_item.id, status: "Closed", start_date: "04/01/2022", end_date: "04/01/2022")
paula_request = Request.create!(title: "Sport shirt", description: "Hola amiga, love this top, could I borrow it from you next Weds?", user_id: paula.id, item_id: louise_item.id, status: "Closed", start_date: "04/01/2022", end_date: "04/01/2022")
marie_request = Request.create!(title: "Beach holiday", description: "Hey does anyone have something I could borrow for a beach party?", user_id: marie.id, item_id: emma_item_2.id, status: "Closed", start_date: "04/01/2022", end_date: "04/01/2022")

#suggestion seeds

suggestion_1 = Suggestion.new(request_id: emma_request.id, item_id: marie_item_2.id)
suggestion_2 = Suggestion.new(request_id: emma_request.id, item_id: paula_item.id)
suggestion_3 = Suggestion.new(request_id: marie_request.id, item_id: louise_item.id)
suggestion_4 = Suggestion.new(request_id: marie_request.id, item_id: emma_item_2.id)
suggestion_5 = Suggestion.new(request_id: marie_request.id, item_id: elise_item_1.id)
suggestion_6 = Suggestion.new(request_id: marie_request_1.id, item_id: emma_suit_1.id)
suggestion_7 = Suggestion.new(request_id: louise_request.id, item_id: paula_red_dress_1.id)
suggestion_8 = Suggestion.new(request_id: louise_request.id, item_id: emma_red_dress_1.id)


suggestion_1.save
suggestion_2.save
suggestion_3.save
suggestion_4.save
suggestion_5.save
suggestion_6.save
suggestion_7.save
suggestion_8.save

#chatroom seeds

chatroom1 = Chatroom.create(request_id: marie_request.id)

#message seeds

message1 = Message.create(content: "What do you think of this?", chatroom_id: chatroom1.id, user_id:elise.id)
