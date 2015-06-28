Rails.application.routes.draw do
  devise_for :users
  resources :ideas_presentadas, only: [:show, :index]
  resources :startup_weekends, only: [:show, :index] do
    resources :ideas_presentadas
  end
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :startup_weekends
  root 'startup_weekends#index'

  get 'eventos', to: 'public#evento', as: :eventos
  get 'startup', to: 'public#startup', as: :startup
end
