Rails.application.routes.draw do
  root 'home#show'

  resources :games, only: [:create, :update]

  resources :users, only: :index
end
