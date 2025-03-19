Rails.application.routes.draw do
  root 'posts#index'
  
  resources :names
  resources :posts

  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  resources :users
end
