Rails.application.routes.draw do
  devise_for :users
  root  'about#index'
  resources :boards
  get "about/index"
  resources :blogs
  resources :friends
  resources :comments, only: [:create, :destroy]
  resources :opinions, only: [:create, :destroy]
  resources :responses, only: [:create, :destroy]
end
