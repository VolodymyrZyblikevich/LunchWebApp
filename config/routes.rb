Rails.application.routes.draw do
  devise_for :users

  resources :dishes
  resources :menu_days, only: %i[show]
  root to: 'dishes#index'
end
