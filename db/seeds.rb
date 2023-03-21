# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Item.destroy_all
Request.destroy_all
User.destroy_all

louis = User.create(email: "louis_dupont@example.com", password: "louis_password", first_name: "Louis", last_name: "Dupont")
louis_item = Item.create(size: "M", colour: "Blue", occasion: "Casual", category: "Clothes", category_type: "Shirts", brand: "Nike", condition: "Like new", description: "New Nike blue polo shirt", user_id: louis.id)
louis_item.save

marie = User.create(email: "marie_martin@example.com", password: "marie_password", first_name: "Marie", last_name: "Martin")
marie_item = Item.create(size: "S", colour: "Red", occasion: "Party", category: "Clothes", category_type: "Dresses", brand: "Gucci", condition: "Used but good", description: "Gucci red cocktail dress", user_id: marie.id)
marie_item.save

paul = User.create(email: "paul_dubois@example.com", password: "paul_password", first_name: "Paul", last_name: "Dubois")
paul_item = Item.create(size: "L", colour: "Black", occasion: "Formal", category: "Clothes", category_type: "Suits", brand: "Armani", condition: "Like new", description: "Armani two-piece black suit", user_id: paul.id)
paul_item.save

elise = User.create(email: "elise_girard@example.com", password: "elise_password", first_name: "Elise", last_name: "Girard")
elise_item_1 = Item.create(size: "M", colour: "Green", occasion: "Sport", category: "Clothes", category_type: "Tops", brand: "Adidas", condition: "Past its best", description: "Adidas green athletic t-shirt", user_id: elise.id)
elise_item_2 = Item.create(size: "L", colour: "Black", occasion: "Sport", category: "Clothes", category_type: "Trousers", brand: "Adidas", condition: "Past its best", description: "Adidas black athletic trousers", user_id: elise.id)
elise_item_1.save
elise_item_2.save
elise_request = Request.create(title: "Hiking Boots", description: "I am going hiking in Patagonia in July, does anyone have any size 6 hiking boots I could borrow?", user_id: elise.id)

emma = User.create(email: "emma@example.com", password: "emma_password", first_name: "Emma", last_name: "M")
emma_request = Request.create(title: "Red Dress", description: "I need a dress for Charles birthday party next weekend. I want to wear my new red heels so would love maybe something red?", user_id: emma.id)
emma_request.save

suggestion_1 = Suggestion.create(request_id: emma_request.id, item_id: marie_item.id)
suggestion_2 = Suggestion.create(request_id: emma_request.id, item_id: paul_item.id)
