Rails.application.routes.draw do

  resources :tests
  resources :regs
  resources :answers
  resources :articles
  root "articles#index"


end
