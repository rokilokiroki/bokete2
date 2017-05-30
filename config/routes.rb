Rails.application.routes.draw do
  devise_for :users
  root 'bokes#index'
    resources :odais do
      resources :bokes do
        resources :comments, only: [:create]
      end
    end
  resources :odais
  resources :users, only: [:show]
end
