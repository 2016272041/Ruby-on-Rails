Rails.application.routes.draw do

  resources :regs
  resources :answers
  resources :articles

  root "#index"

end
