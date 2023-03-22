Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :pizzas, only: [:index]

  resources :restaurants, only: [:index, :show, :destroy]
  
  resources :restaurant_pizzas, only: [:create]



end
