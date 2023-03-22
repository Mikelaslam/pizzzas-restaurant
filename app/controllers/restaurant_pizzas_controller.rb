class RestaurantPizzasController < ApplicationController
    def create
  restaurant_pizza = RestaurantPizza.new(restaurant_pizza_params)
  if restaurant_pizza.save
    render json: { id: restaurant_pizza.pizza.id, name: restaurant_pizza.pizza.name, ingredients: restaurant_pizza.pizza.ingredients }
  else
    render json: { errors: restaurant_pizza.errors.full_messages }, status: :unprocessable_entity
  end
end

end
