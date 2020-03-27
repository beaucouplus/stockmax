Rails.application.routes.draw do

  resources :items, only: [:create, :index]
  resources :deliveries, only: [:create, :index]
  resources :delivery_items, only: [:create, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
