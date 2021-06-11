Rails.application.routes.draw do
  get 'xml_file/create'
   root to: 'session#index'
  get 'list_users', to: 'users#index', as: 'list_users'
  resources :users, except: [:index]
  get 'signup', to: 'users#new'
  get 'login', to: 'session#login'
  post 'create', to: 'session#create'
  delete 'logout', to: 'session#logout'
  #Change Password Feature
  get 'change_password', to: 'session#showPassword'
  post 'change_password', to: 'session#updatePassword'
  #Show Profile
  get 'profile', to: 'session#showProfile'
  #About us
  get 'about_us', to: 'introduction#show'
  #XML
  get 'upload_xml', to: 'xml_file#create'
  post 'upload_xml', to: 'xml_file#update'
  get 'show_details', to: 'xml_file#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
