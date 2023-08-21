Rails.application.routes.draw do
  resources :movies 
  # resources :users, only: [:show, :create]
  resources :reviews
  get '/me', to: 'users#show'
  post '/signup', to: 'users#create'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
