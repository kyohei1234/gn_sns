Rails.application.routes.draw do
  devise_for :users
  root 'about#index'
  resources :boards
  post '/boards_search' => 'boards#search'
  get '/boards/category/:category' => 'boards#category_search', as: :boards_search_by_category
  get "about/index"
  resources :blogs
  resources :friends
  resources :comments, only: [:create, :destroy]
  resources :opinions, only: [:create, :destroy]
  resources :responses, only: [:create, :destroy]
end
