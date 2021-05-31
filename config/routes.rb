Rails.application.routes.draw do
  root to: "texts#index"
  devise_for :users
  devise_scope :user do
    post "users/guest_sign_in", to: "users/sessions#guest_sign_in"
  end
  resources :texts, only: [:index, :show]
  resources :movies, only: [:index]
end
