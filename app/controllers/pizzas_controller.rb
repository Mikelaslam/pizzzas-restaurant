class PizzasController < ApplicationController
    def index
  pizzas = Pizza.all
  render json: pizzas.map { |p| { id: p.id, name: p.name, ingredients: p.ingredients } }
end

end
