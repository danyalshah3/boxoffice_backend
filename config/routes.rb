Rails.application.routes.draw do
  resources :users, only: [:index, :show, :create]
  resources :transations

  
  resources :movies
  resources :sessions, only: [:create]
  get "/me", to: 'sessions#autologin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
