Rails.application.routes.draw do
  resources :users
  root to: 'home#index'
  get 'login', to: 'session#login'
  post 'login', to: 'session#create'
  get 'logout', to: 'session#logout'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
