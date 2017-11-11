Rails.application.routes.draw do
  root to: 'books#index'

  resources :categories
  resources :books
end
