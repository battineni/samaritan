Rails.application.routes.draw do
  resources :venues
  resources :bands
  resources :organizers
  resources :genres
  resources :events
  #root to: 'events#index'
  root to: 'visitors#all'
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
end
