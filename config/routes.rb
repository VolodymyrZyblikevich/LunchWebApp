Rails.application.routes.draw do
  scope "(:locale)", locale: /#{i18n.availcable_locales.join("|")}/ do
    get 'users/show'
    devise_for :users

    resources :dishes
    resources :menu_days, only: %i[index show]
    resources :orders, only: %i[index new create show]
    resources :users, only: %i[show edit update]
    root to: 'menu_days#index'
  end
end