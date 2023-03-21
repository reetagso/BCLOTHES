# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Suggestion.destroy_all
Request.destroy_all
Item.destroy_all
User.destroy_all

#user seeds

louis = User.create(email: "louis_dupont@example.com", password: "louis_password", first_name: "Louis", last_name: "Dupont")
marie = User.create(email: "marie_martin@example.com", password: "marie_password", first_name: "Marie", last_name: "Martin")
paul = User.create(email: "paul_dubois@example.com", password: "paul_password", first_name: "Paul", last_name: "Dubois")
elise = User.create(email: "elise_girard@example.com", password: "elise_password", first_name: "Elise", last_name: "Girard")
emma = User.create(email: "emma_mannion@example.com", password: "emma_password", first_name: "Emma", last_name: "Mannion")


#item seeds

louis_item = Item.create(size: 10, colour: "Blue", occasion: "Casual", category: "Clothes", category_type: "Shirts", brand: "Nike", condition: "Like new", description: "New Nike blue polo shirt", user_id: louis.id)
louis_item.save
marie_item = Item.create(size: 14, colour: "Red", occasion: "Party", category: "Clothes", category_type: "Dresses", brand: "Gucci", condition: "Used but good", description: "Gucci red cocktail dress", user_id: marie.id)
marie_item.save
paul_item = Item.create(size: 40, colour: "Black", occasion: "Formal", category: "Clothes", category_type: "Suits", brand: "Armani", condition: "Like new", description: "Armani two-piece black suit", user_id: paul.id)
paul_item.save
elise_item_1 = Item.create(size: 8, colour: "Green", occasion: "Sport", category: "Clothes", category_type: "Tops", brand: "Adidas", condition: "Past its best", description: "Adidas green athletic t-shirt", user_id: elise.id)
elise_item_2 = Item.create(size: 10, colour: "Black", occasion: "Sport", category: "Clothes", category_type: "Trousers", brand: "Adidas", condition: "Past its best", description: "Adidas black athletic trousers", user_id: elise.id)
elise_item_1.save
elise_item_2.save
emma_item_1 = Item.create(size: 38, colour: "White", occasion: "Sport", category: "Shoes", category_type: "Trainers", brand: "Nike", condition: "Used but good", description: "White Nike air force ones", user_id: emma.id)
emma_item_2 = Item.create(size: 8, colour: "Multi", occasion: "Summer", category: "Skirt", category_type: "Skirt", brand: "Zara", condition: "Used but good", description: "Floaty floral summer dress, loose fit", user_id: emma.id)

#request seeds

#open
elise_request = Request.create(title: "Hiking Boots", description: "I am going hiking in Patagonia in July, does anyone have any size 6 hiking boots I could borrow?", user_id: elise.id)
emma_request = Request.create(title: "Red Dress", description: "I need a dress for Charles birthday party next weekend. I want to wear my new red heels so would love maybe something red?", user_id: emma.id)
emma_request.save

#item requested
louis_request = Request.create(title: "Wedding suit", description: "Hi Paul, I have a wedding to attend next week, please could I borrow your suit?", user_id: louis.id, item_id: paul_item.id, status: "Item Requested")

#closed
paul_request = Request.create(title: "Sport shirt", description: "Hola amigo, love this top, could I borrow it from you next Weds?", user_id: paul.id, item_id: louis_item.id, status: "Closed")
marie_request = Request.create(title: "Beach holiday", description: "Hey does anyone have something I could borrow for beach party?", user_id: marie.id, item_id: emma_item_2.id, status: "Closed")

#suggestion seeds

suggestion_1 = Suggestion.create(request_id: emma_request.id, item_id: marie_item.id)
suggestion_2 = Suggestion.create(request_id: emma_request.id, item_id: paul_item.id)

suggestion_3 = Suggestion.create(request_id: marie_request.id, item_id: marie_item.id)
suggestion_3 = Suggestion.create(request_id: marie_request.id, item_id: emma_item_2.id)
suggestion_3 = Suggestion.create(request_id: marie_request.id, item_id: elise_item_1.id)
