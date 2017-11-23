Rails.application.routes.draw do
<<<<<<< HEAD
=======
  devise_for :users
  root to: 'books#index'

  resources :categories
>>>>>>> 63c162ed6f6f39aff0fb9217a17c12ac009d172c
  resources :books
end
