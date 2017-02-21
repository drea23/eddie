Rails.application.routes.draw do

  devise_for :users
  root to: 'categories#index'
  resources :products
  resources :categories, only: [:show]
  resources :reviews, only: [:new, :create]


  resources :artists, only: [:new, :create, :show]

  mount Attachinary::Engine => "/attachinary"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
