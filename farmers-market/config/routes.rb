Rails.application.routes.draw do
  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  resources :markets
  resources :farmers
  resources :farmer_sessions
  resources :user_sessions
  resources :products

  resources :farmers do
    resources :products
  end

end
