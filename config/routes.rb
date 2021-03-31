Rails.application.routes.draw do
  root to: "categories#index"

  resources :categories do
    resources :products
  end


  resources :teachers do
    resources :students
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
