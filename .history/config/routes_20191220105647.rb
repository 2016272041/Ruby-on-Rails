Rails.application.routes.draw do
  
  root 'home#index'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  
  
 

  get 'home/index'

  resources :registers
  resources :questions
  resources :tests
  resources :answers
  resources :articles
  
end
