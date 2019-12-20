Rails.application.routes.draw do

  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  
  root 'home'
  resources :users
  get 'home/index'
  resources :registers
  resources :questions
  resources :tests
  resources :answers
  resources :articles
  


end
