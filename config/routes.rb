# frozen_string_literal: true

Rails.application.routes.draw do
  root 'users#index'
  devise_for :users

  resources :clients, only: %i[index show destroy edit update ] do
    resources :visits
  end
  get '/clients', to: 'users#clients'
  get '/team', to: 'users#team'
  put '/change_status' , to: 'visits#change_status'
  get '/services', to: 'users#services'
  get '/portfolio', to: 'users#portfolio'
  get '*path', to: 'errors#error_404', via: :all
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
