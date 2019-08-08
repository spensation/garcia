Rails.application.routes.draw do

  get "/" => "home#index"
  get '/sign_up' => 'users#new'
  get '/login'   => 'sessions#new'
  post '/login'   => 'sessions#create'
  delete '/logout'  => 'sessions#destroy'
  get '/logout'  => 'sessions#destroy'

  resources :user_songs
  resources :songs
  resources :albums
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
