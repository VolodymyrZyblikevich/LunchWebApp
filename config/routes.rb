Rails.application.routes.draw do
  get 'users/show'
  devise_for :users

  resources :dishes
  resources :menu_days, only: %i[index show]
  resources :orders, only: %i[index new create]
  resources :users, only: [:show, :edit]
  root to: 'dishes#index'
end
