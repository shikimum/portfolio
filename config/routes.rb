Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  root "static_pages#top"

  resources :users, only: %i[new create]

  resource :profile, only: %i[show edit update] do
    collection do
      get 'your_result'
      get :likes
      get 'change_email', to: 'profiles#change_email'
      put 'update_email', to: 'profiles#update_email'
    end
  end
  resources :likes, only: [:create, :destroy]

  resources :rankings, only: %i[index]

  resources :reviews, only: %i[index new create edit update destroy] do
    collection do
      get :search
    end
  end

  resources :discussions, only: %i[index new create edit update destroy] do
    collection do
      get :search
    end
  end

  resources :likes, only: [:index, :create, :destroy]

  resources :diagnostics, only: [:index, :create] do
    collection do
      get 'result'
    end
  end

  resources :password_resets, only: %i[new create edit update]

  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'

  get '/privacy_policy', to: 'static_pages#privacy_policy'
  get '/terms_of_service', to: 'static_pages#terms_of_service'

  get 'line_login_api/login', to: 'line_login_api#login'
  get 'line_login_api/callback', to: 'line_login_api#callback'
end
