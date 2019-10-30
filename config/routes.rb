Rails.application.routes.draw do
  get 'city/show'
  get 'city/index'
  resources :users
  resources :team, only: [:index]
  resources :contact, only: [:index]
  resources :gossips
  resources :city, except: [:destroy] 
  get '/welcome/:first_name', to: 'dynamic#welcome'
  root 'gossips#index'
  end