Rails.application.routes.draw do
  get 'registration_bridge/index'

  get 'user/new'

  get 'user/create'

  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  resources :markets, only: [:index, :new, :create]
  resources :farmers, only: [:index, :new, :create, :destroy, :update]
  resources :products, only: [:new, :create, :destroy]
  resources :sessions, only: [:new, :create, :destroy, :update]
  resources :users, only: [:new, :create, :destroy]
  resources :dashboard, only: [:index, :edit, :delete, :update]

  resources :search

  resources :farmers do
    resources :products
  end
end
