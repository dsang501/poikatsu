Rails.application.routes.draw do
   devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }
  devise_for :customers, controllers: {
    sessions:      'customers/sessions',
    passwords:     'customers/passwords',
    registrations: 'customers/registrations'
  }

  resources :cards
  
  get 'top'=>'products#top'

  devise_for :users
  root to: "home#index"
  resources :users

  get 'search' => 'cards#search'
end