Rails.application.routes.draw do
  resources :cards
  
  get 'top'=>'products#top'

  devise_for :users
  root to: "home#index"
  resources :users
end