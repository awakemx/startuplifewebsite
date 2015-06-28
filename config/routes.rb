Rails.application.routes.draw do
  root 'public#index'

  get 'eventos', to: 'public#evento', as: :eventos
  get 'startup', to: 'public#startup', as: :startup
end
