# frozen_string_literal: true

Rails.application.routes.draw do
  resources :users
  namespace :api do
    namespace :v1 do
      resources :users
    end
  end
  post '/auth/login', to: 'authentication#login'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'api/v1/users#index'
end
