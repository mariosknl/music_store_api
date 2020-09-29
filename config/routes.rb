# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      get 'instruments/show'
      get 'instruments/index'
      get 'instruments/guitars'
      get 'instruments/bass_guitars'
      get 'instruments/drumkits'
      get 'instruments/snares'
      get 'instruments/cymbals'
      post 'instruments/create'
      patch 'instruments/update'
      delete 'instruments/destroy'
      resources :instruments do
        resources :likes
      end
    end
  end
  devise_for :users,
             path: '',
             path_names: {
               sign_in: 'login',
               sign_out: 'logout',
               registration: 'signup'
             },
             controllers: {
               sessions: 'sessions',
               registrations: 'registrations'
             }
  devise_scope :user do
    delete '/signout', to: 'sessions#delete'
    get '/loggeduser', to: 'sessions#logged?'
  end
end
