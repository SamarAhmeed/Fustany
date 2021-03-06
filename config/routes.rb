Rails.application.routes.draw do
  # get 'pages/home'
  root 'pages#home'
  resources :products
  resources :favorites, only: [:create, :destroy]
  resources :categories
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
