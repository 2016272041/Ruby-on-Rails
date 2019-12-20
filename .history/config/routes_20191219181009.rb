Rails.application.routes.draw do

  resources :users
  get 'home/index'
  get 'user/'
  resources :registers
  resources :questions
  resources :tests
  resources :answers
  resources :articles
  
  root "home#index"


end
