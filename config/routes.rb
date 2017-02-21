Rails.application.routes.draw do

  get 'reviews/new'

  get 'reviews/create'

  root to: 'category#index'
  resources :products
  resources :categories, only: [:show]
  resources :reviews, only: [:new, :create]


  resources :artists, only: [:new, :create, :show]do
    get '/products', to: 'product#index_by_artist'
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
