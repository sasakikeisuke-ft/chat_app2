Rails.application.routes.draw do
  
  devise_for :users
  get 'message/index'
  root to: "message#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create]
end
