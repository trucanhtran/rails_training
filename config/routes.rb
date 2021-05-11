Rails.application.routes.draw do
  root to: 'session#index'
  get 'list_users', to: 'users#index', as: 'list_users'
  resources :users, except: [:index]
  get 'signup', to: 'users#new'
  get 'login', to: 'session#login'
  post 'create', to: 'session#create'
  delete 'logout', to: 'session#logout'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
