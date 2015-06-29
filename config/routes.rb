Rails.application.routes.draw do
  devise_for :users
  resources :startups
  resources :ideas_presentadas, only: [:show, :index]
  resources :startup_weekends, only: [:show, :index] do
    resources :ideas_presentadas
    resources :startups
    collection do
      get 'calendar'
    end
  end

  get 'pasado', to: 'startup_weekends#pasado', as: :pasado
  get 'presente', to: 'startup_weekends#presente', as: :presente
  get 'futuro', to: 'startup_weekends#futuro', as: :futuro

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'startup_weekends#index'
end
