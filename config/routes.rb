Rails.application.routes.draw do
  root to: "fathers#index"
  resources :children
  resources :fathers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
