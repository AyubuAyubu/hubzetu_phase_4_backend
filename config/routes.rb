Rails.application.routes.draw do
  resources :users
  resources :reviews, only: [:index,:create,:destroy]
  resources :hubs, only: [:index,:show,:create,:destroy]
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

end
