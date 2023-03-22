class RestaurantPizza < ApplicationRecord
  belongs_to :restaurant
  belongs_to :Pizza

  validates :price, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 30, 
     message: "Price must be between 1 and 30" }

end
