class RestaurantController < ApplicationController
    def index
  restaurants = Restaurant.all
  render json: restaurants.map { |r| { id: r.id, name: r.name, address: r.address } }
end

end
