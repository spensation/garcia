Rails.application.routes.draw do
  resources :user_songs
  resources :songs
  resources :albums
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/" => "home#index"
end
