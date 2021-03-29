Rails.application.routes.draw do
  root to: "categories#index"
  resources :products
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
