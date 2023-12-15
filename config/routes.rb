Rails.application.routes.draw do
  root "static_pages#top"

  resources :users, only: %i[new create]
  resource :profile, only: %i[show edit update]
  resources :rankings, only: %i[index]
  resources :diagnostics, only: [:index, :create, :new]

  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'
end
