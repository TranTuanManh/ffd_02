Rails.application.routes.draw do
  get 'ratings/create'

  get 'ratings/show'

  root to: "static_pages#index"

  devise_for :users

  resources :users do
  	member do
      get :orders, to: "totals#index"
  	end
  end
  resources :products
  resources :orders, only: [:create, :show, :destroy]
  resources :comments, only: [:create, :edit, :destroy]
  resources :ratings, only: [:create, :destroy]
end
