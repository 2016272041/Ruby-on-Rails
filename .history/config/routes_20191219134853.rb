Rails.application.routes.draw do

  resources :regs
  resources :answers
  resources :articles

  root "regs#index"

end
