Rails.application.routes.draw do
  resources :formulas
  resources :statistics
  resources :indicators
  resources :subthemes
  resources :themes
  resources :reasons
  resources :topics
  devise_for :users
  root to: 'pages#home'
  get '/dashboard', to:'pages#dashboard'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
