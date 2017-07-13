Rails.application.routes.draw do
  get 'static/home'
  get '/about', to: 'static#about'

  resources :tracks
  resources :tracks
  resources :categories

  root 'static#home'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
end
