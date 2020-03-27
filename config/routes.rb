Rails.application.routes.draw do

  resources :items, only: [:create, :index]
  resources :deliveries, only: [:create, :index, :show]
  resources :delivery_items, only: [:create, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # 
  get 'deliveries/:id/items', to: 'delivery_items#index'
  get 'order_picker/deliveries/:id', to: 'order_picker#index', controller: 'order_picker'
end
