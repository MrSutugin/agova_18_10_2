Rails.application.routes.draw do
  root 'screens#index'
  resources :profiles
  get 'dashboard', to: 'profiles#dashboard'
  get 'secret_key', to: 'profiles#secret_key'
  resources :companies, except: %i[show]
end
