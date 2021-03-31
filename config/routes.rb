Rails.application.routes.draw do
  root to: "employers#index"

  resources :employers do
    resources :employees
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
