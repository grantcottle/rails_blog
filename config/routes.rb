Rails.application.routes.draw do
  root to: 'pages#home'
  get 'home', to: 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles do
    resources :comments
  end
  resources :tags
  resources :authors

  resources :author_sessions, only: [:new, :create, :destroy]

  get 'login', to: 'author_sessions#new'
  get 'logout', to: 'author_sessions#destroy'
end
