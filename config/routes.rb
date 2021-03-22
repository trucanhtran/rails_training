Rails.application.routes.draw do
  root to: 'category#index', as: "category_index"
  get 'category/new', to: 'category#new', as: 'category_new'
  get 'category/show/:id', to: 'category#show', as: 'category_show'
  get 'category/edit/:id', to: 'category#edit', as: 'category_edit'
  post 'category/create', to: 'category#create', as: 'category_create'
  patch 'category/update/:id', to: 'category#update', as: 'category_update'
  delete 'category/delete/:id', to: 'category#delete', as: 'category_delete'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
