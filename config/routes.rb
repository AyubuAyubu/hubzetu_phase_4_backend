Rails.application.routes.draw do
  resources :users, only: [:create]
  resources :reviews, only: [:index,:create,:destroy]
  resources :hubs, only: [:index,:show,:create,:destroy]

end
