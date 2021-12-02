Rails.application.routes.draw do
  get 'carts/new'
  get 'carts/create'
  get 'carts/show'
  root 'items#index'
  get 'static_pages/secret'
  devise_for :users
  resources :users
  resources :items
  resources :orders
   resources :carts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
