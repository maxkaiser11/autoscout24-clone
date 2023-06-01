Rails.application.routes.draw do
  resources :reservations do
    patch 'accept', on: :member
  end
  delete 'reservations/:id', to: 'reservations#destroy', as: :delete_reservation
  root to: 'vehicles#index'
  # get 'new', to: "vehicles#new", as: :new_vehicle
  # get 'vehicles/:id', to: "vehicles#show", as: :vehicle
  # post 'vehicles', to: "vehicles#create"
  # get 'vehicles/:id/edit', to: 'vehicles#edit', as: :edit_vehicle
  # patch 'vehicles/:id', to: 'vehicles#update'
  resources :vehicles, except: [:index] do
    post 'create_reservation', on: :member
  end
  delete 'vehicles/:id', to: 'vehicles#destroy', as: :delete
  devise_for :users
  get 'profile', to: 'profile#index', as: :profile
end
