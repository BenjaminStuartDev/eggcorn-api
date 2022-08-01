# frozen_string_literal: true

Rails.application.routes.draw do
  resources :users
  namespace :api do
    namespace :v1 do
      resources :users
      post '/login', to: 'authentication#login'
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'api/v1/users#index'
end
