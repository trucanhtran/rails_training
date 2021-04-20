Rails.application.routes.draw do
  root to: 'appoinments#index'
  resources :patients do
    resources :appoinments

  end

  resources :physicans do
    resources :appoinments
  end

  resources :appoinments

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
