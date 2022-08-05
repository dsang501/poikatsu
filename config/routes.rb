Rails.application.routes.draw do

  # admin
   devise_for :admins
   namespace :admin do
    resources :customers,only: [:index,:show,:edit,:update]
  	resources :cards,only: [:index,:new,:create,:show,:edit,:update,]
    get 'top'=>'cards#top'
   end

  # customer
  devise_for :customers, controllers: {
    sessions:      'customers/sessions',
    passwords:     'customers/passwords',
    registrations: 'customers/registrations'
  }

  root 'customer/cards#top'

  scope module: :customer do
    resources :cards,only: [:top,:show,:index]
    get 'search' => 'cards#search'
    get 'customer/edit' => 'customers#edit'
    put 'customer' => 'customers#update'

  	resource :customers,only: [:show] do
  		collection do
  	     get 'quit'
  	     patch 'out'
  	  end

    resources :cards do
      resource :favorites, only: [:create, :destroy]
      end
    end
  end
end