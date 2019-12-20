Rails.application.routes.draw do

  resources :users
  get 'home/index'
  get ''
  resources :registers
  resources :questions
  resources :tests
  resources :answers
  resources :articles
  
  root "home#index"


end
