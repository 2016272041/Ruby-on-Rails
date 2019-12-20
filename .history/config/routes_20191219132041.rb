Rails.application.routes.draw do

  resources :answers
  resources :articles

  root "answers#index"

end
