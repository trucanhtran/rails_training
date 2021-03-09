Rails.application.routes.draw do
  get 'store/index'
  get 'store/new'
  get 'store/show'
  root to: "home#index"
  get '/contact/:contact_id/:contact1_id/:contact2_id', to: 'home#contact'
  get '/profile123/:id', to:'home#profile'
  get '/contact123/:contact_id', to:'home#contact123', as: "contact123"
  get '/rails/:id/ruby', to:'home#test', as: "rails_ta"
  get '/reviewday2/', to: 'home#review'
  get '/reviewday2/:review_id', to: 'home#review'
  get '/test/:id/member/:member_id', to: 'user#test', as: "test_ta"
  get '/:id/user/:user_id', to: 'user#contact', as: "contact_ta"
  get '/form/', to: 'form#basic'
  get '/card/new', to: 'card#new', as: "card12345"
  get '/card/create', to: 'card#create', as: "card_create"
  get '/card/edit', to: 'card#edit', as:"card_edit"
  post '/submit_form', to: 'card#submit_f', as:"form_submit1"
  get '/card/city', to: 'card#city', as:"city"
  post '/submit123', to: 'card#submit', as: "submit123"
  get '/list_items', to: 'item#index', as: "item_index"
  get '/list_item/new', to: 'item#new'
  post '/list_items/create', to: 'item#create', as: "item_create"
  put '/list_items/update', to: 'item#update'
  delete '/list_items/delete', to: 'item#delete'
  get '/list_items/edit', to: 'item#edit'
  get '/item/:id', to: 'item#show', as: "item_show"
  #ProductItem
  get '/product_items', to: 'product_item#index', as: "product_item_list"
  get '/product_item/new', to: 'product_item#new', as: "new_product_item"
  get '/product_item/:id', to: 'product_item#show'
  delete '/product_item/:id', to: 'product_item#destroy', as: "delete_product_item"
  get '/product_item/edit', to: 'product_item#edit'
  post '/product_item/create', to: 'product_item#create', as: "product_item_create"
  put '/product_items/update', to: 'product_item#update'
  #Store
  get 'store/home', to: 'store#index', as: "store_home_list"
  get 'store/new', to: 'store#new', as: "store_new1"
  get 'store/show/:id', to: 'store#show'
  post 'store/create', to: 'store#create', as: "store_create"
  put 'store/update', to: 'store#update'
  delete 'store/destroy', to: 'store#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
