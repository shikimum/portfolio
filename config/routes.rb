Rails.application.routes.draw do
  root "static_pages#top"

  resources :users, only: %i[new create]
  resource :profile, only: %i[show edit update] do
    collection do
      get 'your_result'
    end
  end
  resources :rankings, only: %i[index]
  resources :reviews, only: %i[index new create edit update destroy]
  resources :discussions, only: %i[index new create edit update destroy]
  resources :diagnostics, only: [:index, :create] do
    collection do
      get 'result'
    end
  end

  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'

  get '/privacy_policy', to: 'static_pages#privacy_policy'
  get '/terms_of_service', to: 'static_pages#terms_of_service'
end
