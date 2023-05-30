Rails.application.routes.draw do
  resources :reservations
  root to: 'vehicles#index'
  get 'new', to: "vehicles#new", as: :new_vehicle
  get 'vehicles/:id', to: "vehicles#show", as: :vehicle
  post 'vehicles', to: "vehicles#create"
  get 'vehicles/:id/edit', to: 'vehicles#edit', as: :edit_vehicle
  patch 'vehicles/:id', to: 'vehicles#update'
  # resources :vehicles
  delete 'vehicles/:id', to: 'vehicles#destroy', as: :delete
  devise_for :users
end
