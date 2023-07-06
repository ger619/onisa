# frozen_string_literal: true

Rails.application.routes.draw do
  get 'cart/show', to: 'cart#show'
  post 'cart/add', to: 'cart#add'
  post 'cart/remove', to: 'cart#remove'
  resources :products
  root 'products#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
