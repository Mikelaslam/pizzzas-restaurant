class ApplicationController < ActionController::Base

   # GET all restaurants
  def index
    restaurants = Restaurant.all
    render json: restaurants.as_json(only: [:id, :name, :address]), status: :ok
  end

  # GET a specific restaurant and its associated pizzas
  def show
    restaurant = Restaurant.find_by(id: params[:id])
    if restaurant
      pizzas = restaurant.pizzas.as_json(only: [:id, :name, :ingredients])
      render json: restaurant.as_json(only: [:id, :name, :address]).merge(pizzas: pizzas), status: :ok
    else
      render json: { error: 'Restaurant not found' }, status: :not_found
    end
  end
  
  
end
