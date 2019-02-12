Rails.application.routes.draw do
  resources :addresses
  resources :users
  resources :categories
  resources :genres
  resources :order_items
  resources :books
  resources :sessions
  get 'pages/index'
  #get 'pages/item'
  get 'pages/search'
  #get 'layout/header'
  #get 'layout/footer'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  get '/search', to: 'pages#search'
  get '/cart', to: 'order_items#index'
  resources :order_items, path: 'cart/items'
  #get '/cart/checkout', to: 'orders#new', as: :checkout
  patch '/cart/checkout', to: 'orders#create', as: :checkout
end
