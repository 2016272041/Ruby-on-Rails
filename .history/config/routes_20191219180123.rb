Rails.application.routes.draw do

  get 'home/index'
  resources :registers
  resources :questions
  resources :tests
  resources :answers
  resources :articles
  root "home#index"


end
