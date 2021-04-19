Rails.application.routes.draw do
root to: 'students#index'

  resources :students do
    resources :records
  end
  resources :teachers do
    resources :records
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
