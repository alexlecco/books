Rails.application.routes.draw do
  resources :categories
  devise_for :users
  root to: 'books#index'

  resources :books
end
