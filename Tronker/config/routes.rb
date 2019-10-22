Rails.application.routes.draw do
  get 'sessions/create'
  get 'sessions/destroy'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks"}
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "posts#index"
  get 'login', to: 'logins#new'
  get 'login/create', to: 'logins#create', as: :create_login
  get 'auth/google_oauth2'
end
