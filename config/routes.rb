Rails.application.routes.draw do
  resources :reservations do
    patch 'accept', on: :member
  end
  delete 'reservations/:id', to: 'reservations#destroy', as: :delete_reservation
  root to: 'vehicles#index'
  resources :vehicles, except: [:index] do
    post 'create_reservation', on: :member
  end
  delete 'vehicles/:id', to: 'vehicles#destroy', as: :delete
  devise_for :users
  get 'profile', to: 'profile#index', as: :profile
end
