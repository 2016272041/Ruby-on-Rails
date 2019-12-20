Rails.application.routes.draw do

  resources :questions
  resources :tests
  resources :answers
  resources :articles
  root "articles#index"


end
