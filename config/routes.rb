Rails.application.routes.draw do
  # admin
  devise_for :admins
  namespace :admin do
    resources :customers, only: %i[index show edit update]
    resources :cards, only: %i[index new create show edit update]
    get 'top' => 'cards#top'
  end

  # customer
  devise_for :customers, controllers: {
    sessions: 'customers/sessions',
    passwords: 'customers/passwords',
    registrations: 'customers/registrations'
  }

  root 'customer/cards#top'
  get 'about' => 'customer/cards#about'
  get 'contact' => 'customer/customers#contact'
  get 'terms_of_service' => 'customer/customers#terms_of_service'
  get 'privacy_policy' => 'customer/customers#privacy_policy'

  scope module: :customer do
    resources :cards, only: %i[top show index]
    get 'search' => 'cards#search'
    get 'customer/edit' => 'customers#edit'
    put 'customer' => 'customers#update'

    resource :customers, only: [:show] do
      collection do
        get 'quit'
        patch 'out'
        get :favorites
      end

      resources :cards do
        resource :favorites, only: %i[create destroy]
      end
    end
  end
end
