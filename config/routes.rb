Rails.application.routes.draw do
  resources :users
  resources :team, only: [:index]
  resources :contact, only: [:index]
  resources :gossips, except: [:destroy] 
  get '/welcome/:first_name', to: 'dynamic#welcome'
  root 'gossips#index'
  end