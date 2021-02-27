Rails.application.routes.draw do
  root to: "home#index"
  get '/contact', to: 'home#contact'
  get '/profile123', to:'home#profile'
  get '/contact123', to:'home#contact123'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
