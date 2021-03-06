Rails.application.routes.draw do
  # Root 
  root 'home#index'
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  get 'home/index'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'

  resources :registers
  resources :questions
  resources :tests
  resources :answers
  resources :articles
  
end
