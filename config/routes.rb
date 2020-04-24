Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get 'home', to: 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles do
    resources :comments
  end
end
