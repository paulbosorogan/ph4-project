Rails.application.routes.draw do
  resources :movies, only: [:index, :show]
  resources :reviews 
  resources :users, only: [:index, :show, :create]
  get '/me', to: 'users#show'
  post '/signup', to: 'users#create'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
