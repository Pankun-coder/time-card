Rails.application.routes.draw do
  get 'stamping/new'
  get 'session/new'
#  root 'static_pages#home'
  root "home#index"
  get "/home/index", to: "home#index"
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get "stamping/new", to: "stamping#new"
  post "stamping/new", to: "stamping#create"
  resources :users
end
