# frozen_string_literal: true

Rails.application.routes.draw do
  scope ":locale", locale: /en|ru/ do
    root 'users#index', locale: :ru
    devise_for :users

    resources :clients, controller: :users, only: %i[index show] do
      resources :visits
    end

    resources :users, only: %i[destroy edit update]

    get '/admin_index', to: 'visits#admin_index'
    get '/clients', to: 'users#clients'
    get '/team', to: 'users#team'
    put '/change_status' , to: 'visits#change_status'
    get '/services', to: 'users#services'
    get '/portfolio', to: 'users#portfolio'
    get '*path', to: 'errors#error_404', via: :all
  end
end
