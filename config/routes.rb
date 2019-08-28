Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :items do
    resources :reviews, only: [:new, :create]
  end
  resources :orders, only: [:show, :create]
  get 'pages/user', to: 'pages#user_show', as: :user_show

end
