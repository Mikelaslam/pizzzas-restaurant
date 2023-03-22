# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples;

pizza_hut = Restaurant.create(name: "Pizza Hut")
dominos = Restaurant.create(name: "Domino's")
papa_johns = Restaurant.create(name: "Papa John's")
mama_ngina = Restaurant.create(name: "Mama Ngina")

# create some pizzas
pepperoni = Pizza.create(name: "Pepperoni")
margherita = Pizza.create(name: "Margherita")
veggie = Pizza.create(name: "Veggie")

# associate pizzas with restaurants
RestaurantPizza.create(restaurant: pizza_hut, pizza: pepperoni)
RestaurantPizza.create(restaurant: pizza_hut, pizza: veggie)
RestaurantPizza.create(restaurant: dominos, pizza: pepperoni)
RestaurantPizza.create(restaurant: dominos, pizza: margherita)
RestaurantPizza.create(restaurant: papa_johns, pizza: margherita)
RestaurantPizza.create(restaurant: papa_johns, pizza: veggie)
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
