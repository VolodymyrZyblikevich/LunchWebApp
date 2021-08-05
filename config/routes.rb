Rails.application.routes.draw do
  devise_for :users

  resources :dishes
  resources :menu_days, only: %i[index show]
  resources :orders, only: %i[index new]
  root to: 'dishes#index'
end
