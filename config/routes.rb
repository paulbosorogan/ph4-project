Rails.application.routes.draw do
  resources :movies, only: [:index, :create]
  resources :reviews, only: [:index, :create, :update, :destroy]
  get '/me', to: 'users#show'
  post '/signup', to: 'users#create'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
