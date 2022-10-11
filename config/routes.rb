Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users
  ActiveAdmin.routes(self)
  root to: "home_pages#index"
  get '/help', to: 'home_pages#help'
  get '/about', to: 'home_pages#about'
  get '/contact', to: 'home_pages#contact'
  resources :users
  resources :microposts, only: [:create, :destroy]
end
