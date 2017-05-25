Rails.application.routes.draw do
  devise_for :users
  root 'bokes#index'
  resources :bokes do
    resources :comments, only: [:create]
 end

  resources :users, only: [:show]
end
