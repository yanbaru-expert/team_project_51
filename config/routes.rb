Rails.application.routes.draw do
  root to: "texts#index"
  devise_for :users
  resources :texts, only: [:index, :show]
  resources :movies, only: [:index]
end
