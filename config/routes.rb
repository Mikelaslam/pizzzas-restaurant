Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # GET all restaurants
  get '/restaurants', to: 'restaurants#index'

  # GET a specific restaurant and its associated pizzas
  get '/restaurants/:id', to: 'restaurants#show'

 

  # Defines the root path route ("/")
  # root "articles#index"
end
