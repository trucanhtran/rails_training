Rails.application.routes.draw do
  root to: "apples#index"
  resources :apples
  #new
  get 'apple/new', to: 'apples#new_apple', as: 'new_apple1'
  post 'apple/create', to: 'apples#create_apple', as: 'create_apple1'
  get 'apple/edit/:id', to: 'apples#edit_apple', as: 'edit_apple1'
  patch 'apple/update/:id', to: 'apples#update_apple', as: 'update_apple1'
  delete 'apple/delete/:id', to: 'apples#delete_apple', as: 'delete_apple1'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
