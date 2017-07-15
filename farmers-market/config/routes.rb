Rails.application.routes.draw do
  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  resources :markets
  resources :farmers, only: [:index, :new, :create]
  resources :products
  resources :sessions, only: [:new, :create, :destroy]


  resources :farmers do
    resources :products
  end
end
