Rails.application.routes.draw do
  resources :users
  resources :hubs do
    resources :reviews
    #resources :reviews, only: [:index,:show,:destroy,:create]
  end
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/hubs", to: "hubs#index"
  post "/register_hub", to: "hubs#create"
  post "/hubs/:id/review", to: "reviews#create_review"
end
