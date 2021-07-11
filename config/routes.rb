# frozen_string_literal: true

Rails.application.routes.draw do
  root 'users#index'
  resources :users, only: %i[index show destroy]
  devise_for :users
  # get '/me', to: 'users#me'
  # get 'me/edit', to: 'users#edit'
  # put 'me/edit/:id', to: 'users#update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
