Rails.application.routes.draw do

  resources :users
  get 'home/index'
  get 'user/index'
  resources :registers
  resources :questions
  resources :tests
  resources :answers
  resources :articles
  
  root "user#index"


end
