Rails.application.routes.draw do
  get '/', to: 'static#index'
  get '/home', to: 'static#index'
  get '/team', to: 'static#team'
  get '/contact', to: 'static#contact'
  get '/welcome/:first_name', to: 'dynamic#welcome'
  get '/gossip/:gossip_id', to: 'dynamic#gossip', as: 'gossip_id'
  get 'user/:user_id', to: 'dynamic#user', as: 'user_id'
  end