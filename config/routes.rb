IecepApp::Application.routes.draw do
  resources :photos

  resources :albums

  resources :events

  resources :news

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  root 'static_pages#home'
  #get "static_pages/home"

  match '/new_admin',   to: 'users#new',            via: 'get'
  #match '/admin_index', to: 'users#index'           via: 'get'
  match '/login',       to: 'sessions#new',         via: 'get'
  match '/logout',      to: 'sessions#destroy',     via: 'delete'
  
  match '/news',        to: 'static_pages#news',        via: 'get'
  match '/events',      to: 'static_pages#events',      via: 'get'
  match '/membership',  to: 'static_pages#membership',  via: 'get'
  match '/about',       to: 'static_pages#about',       via: 'get'
  match '/contact',     to: 'static_pages#contact',     via: 'get'
  match '/gallery',     to: 'static_pages#gallery',     via: 'get'
  match '/officers',    to: 'static_pages#officers',    via: 'get'
end
