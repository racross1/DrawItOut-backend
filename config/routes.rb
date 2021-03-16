Rails.application.routes.draw do
  resources :paintings
  resources :topics
  #resources :users
  resources :users, only: [:create, :update, :destroy]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  
end
