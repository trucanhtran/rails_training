Rails.application.routes.draw do
root to: "teachers#index"

  resources :teachers do
    resources :students
  end
  resources :students do
    resources :records
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
