Rails.application.routes.draw do
  devise_for :users
  root to: 'books#index'

  resources :categories
  resources :books
end
