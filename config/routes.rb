Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: "texts#index"
  devise_for :users
  resources :texts, only: [:index, :show]
  resources :movies, only: [:index]
end
