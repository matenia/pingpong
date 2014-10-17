Rails.application.routes.draw do
  root 'home#show'

  resources :games, only: [:create, :update] do
    collection do
      get :random_recent
    end
  end

  resources :users, only: [:index, :show]
end
