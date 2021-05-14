Rails.application.routes.draw do
  
  resources :users, only: [:create, :index, :show]
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"

  resources :items
  resources :carts
  resources :cart_items, only: [:create, :show, :destroy]
  
  root to: "static#home"
end
