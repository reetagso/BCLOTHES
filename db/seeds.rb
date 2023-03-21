# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Item.destroy_all
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
elise_item = Item.create(size: "M", colour: "Green", occasion: "Sport", category: "Clothes", category_type: "Tops", brand: "Adidas", condition: "Past its best", description: "Adidas green athletic t-shirt", user_id: elise.id)
elise_item.save
