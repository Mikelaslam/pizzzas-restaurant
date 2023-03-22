Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # GET all restaurants
  get '/restaurants', to: 'restaurants#index'

  # GET a specific restaurant and its associated pizzas
  get '/restaurants/:id', to: 'restaurants#show'

  # DELETE a specific restaurant and its associated restaurant_pizzas
  delete '/restaurants/:id', to: 'restaurants#destroy'

  # GET all pizzas
  get '/pizzas', to: 'pizzas#index'

  # POST a new restaurant_pizza
  post '/restaurant_pizzas', to: 'restaurant_pizzas#create'

  # Defines the root path route ("/")
  # root "articles#index"
end
