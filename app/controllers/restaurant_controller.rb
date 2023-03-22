class RestaurantController < ApplicationController
    def index
  restaurants = Restaurant.all
  render json: restaurants.map { |r| { id: r.id, name: r.name, address: r.address } }
end
def show
  restaurant = Restaurant.find_by(id: params[:id])
  if restaurant
    render json: {
      id: restaurant.id,
      name: restaurant.name,
      address: restaurant.address,
      pizzas: restaurant.pizzas.map { |p| { id: p.id, name: p.name, ingredients: p.ingredients } }
    }
  else
    render json: { error: "Restaurant not found" }, status: :not_found
  end
end

  def destroy
  restaurant = Restaurant.find_by(id: params[:id])
  if restaurant
    restaurant.restaurant_pizzas.destroy_all
    restaurant.destroy
    head :no_content
  else
    render json: { error: "Restaurant not found" }, status: :not_found
  end
end

end
