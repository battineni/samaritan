Rails.application.routes.draw do
  resources :organizers
  resources :genres
  resources :events
  root to: 'events#index'
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
end
