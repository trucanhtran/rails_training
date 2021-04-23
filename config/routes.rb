Rails.application.routes.draw do
  root to: 'customers#index'

  resources :customers do
    resources :bills
  end
  resources :products do
    resources :bills
  end

  resources :bills
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
