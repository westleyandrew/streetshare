Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :items do
    resources :reviews, only: [:new, :create]
  end
  resources :orders, only: [:show, :create, :edit, :update, :destroy] do
    resources :payments, only: [:new, :create]
    patch '/accept', to: 'orders#accept'
    patch '/reject', to: 'orders#reject'
  end

  get 'pages/user', to: 'pages#user_show', as: :user_show

  resources :conversations do
    resources :messages
  end
end
