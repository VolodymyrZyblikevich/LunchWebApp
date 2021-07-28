Rails.application.routes.draw do
  resources :dishes
  devise_for :users
  get '/menu_days', to: 'menus#index'
  get '/today', to: 'menus#select_day'
  root to: 'dishes#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
