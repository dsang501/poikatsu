Rails.application.routes.draw do

  # admin
   devise_for :admins
   namespace :admin do
    resources :customers,only: [:index,:show,:edit,:update]
  	resources :cards
   end

  # customer
  devise_for :customers, controllers: {
    sessions:      'customers/sessions',
    passwords:     'customers/passwords',
    registrations: 'customers/registrations'
  }

  scope module: :customer do
    resources :cards,only: [:index,:show]
    get 'search' => 'cards#search'
    get 'customer/edit' => 'customers#edit'
    put 'customer' => 'customers#update'

  	resource :customers,only: [:show] do
  		collection do
  	     get 'quit'
  	     patch 'out'
  	  end
    end
  end
  
  get 'top'=>'cards#top'

  root to: "home#index"
  
  get 'search' => 'cards#search'
end