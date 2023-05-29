Rails.application.routes.draw do
  root to: 'vehicles#index'
  get 'new', to: "vehicles#new", as: :new
  post 'vehicles', to: "vehicles#create"
  devise_for :users
end
