Rails.application.routes.draw do

  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  
  root 'home#index'
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 

  get 'home/index'

  resources :registers
  resources :questions
  resources :tests
  resources :answers
  resources :articles
  


end
