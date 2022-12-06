Rails.application.routes.draw do
  resources :users
  resources :reviews, only: [:show,:destroy,:create]
  resources :hubs
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/hubs", to: "hubs#index"
  post "/register", to: "hubs#create"

end
