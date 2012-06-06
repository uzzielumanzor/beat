Songs::Application.routes.draw do
  
  resources :users
  
  get "home/index"

  root to: "home#index"
  resources :songs
  get "songs/new"
  
end
