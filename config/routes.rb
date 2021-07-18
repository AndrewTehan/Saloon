# frozen_string_literal: true

Rails.application.routes.draw do
  root 'users#index'
  devise_for :users, controllers: { confirmations: 'confirmations' }
  resources :users, only: %i[index show destroy edit update]
  get '/me', to: 'users#me'
  get '*path', to: 'errors#error_404', via: :all
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
