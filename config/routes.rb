Rails.application.routes.draw do
  root 'categories#index'
  resources :todos
  resources :categories
end
