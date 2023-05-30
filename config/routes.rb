Rails.application.routes.draw do
  root to: 'vehicles#index'
  get 'new', to: "vehicles#new", as: :new
  get 'vehicle/:id', to: "vehicles#show", as: :show
  post 'vehicles', to: "vehicles#create"
  delete 'vehicles/:id', to: 'vehicles#destroy', as: :delete
  devise_for :users
end
