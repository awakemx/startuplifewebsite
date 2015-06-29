Rails.application.routes.draw do
  devise_for :users

  resources :startups
  resources :ideas_presentadas, only: [:show, :index]
  resources :registros, only: [:new, :create]
  resources :startup_weekends, only: [:show, :index] do
    resources :ideas_presentadas
    resources :startups
    collection do
      get 'calendar'
    end
  end

  get 'futuro', to: 'startup_weekends#futuro', as: :futuro
  get 'pasado', to: 'startup_weekends#pasado', as: :pasado
  get 'presente', to: 'startup_weekends#presente', as: :presente
  get 'registrate', to: 'registros#new', as: :registrate
  post 'dia', to: 'startup_weekends#day', as: :dia

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'startup_weekends#index'
end
