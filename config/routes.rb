Rails.application.routes.draw do
  resources :users
  resources :team, only: [:index]
  resources :contact, only: [:index]
  resources :gossips do
    resources :like, only: [:new, :create, :destroy]
  end
  resources :city, except: [:destroy] 
  resources :session, only: [:new, :create, :destroy, :show]
  get '/welcome/:first_name', to: 'dynamic#welcome'
  root 'gossips#index'
  end