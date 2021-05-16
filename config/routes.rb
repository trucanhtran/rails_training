Rails.application.routes.draw do
  root to: 'session#index'
  resources :users
  get 'signup', to: 'users#new'
  get 'login', to: 'session#login'
  post 'create', to: 'session#create'
  delete 'logout', to: 'session#logout'
  get 'contact', to: 'session#contact'
  post 'contact', to: 'session#send_email'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
