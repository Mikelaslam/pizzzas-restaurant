class RestaurantPizzasController < ApplicationController
    def create
  restaurant_pizza = RestaurantPizza.new(restaurant_pizza_params)
  if restaurant_pizza.save
    render json: { id: restaurant_pizza.pizza.id, name: restaurant_pizza.pizza.name, ingredients: restaurant_pizza.pizza.ingredients }
  else
    render json: { errors: restaurant_pizza.errors.full_messages }, status: :unprocessable_entity
  end
end

private

def restaurant_pizza_params
  params.require(:restaurant_pizza).permit(:price, :pizza_id, :restaurant_id)
end

end
