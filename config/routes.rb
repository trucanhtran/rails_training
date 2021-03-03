Rails.application.routes.draw do
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
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
