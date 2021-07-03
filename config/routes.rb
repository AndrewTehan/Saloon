# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :users, only: %i[index show destroy]
  get '/me', to: "users#me"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
