Rails.application.routes.draw do

  resources :registers
  resources :questions
  resources :tests
  resources :answers
  resources :articles
  root "registers#index"


end
