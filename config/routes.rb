IecepApp::Application.routes.draw do
  
  root 'static_pages#home'
  #get "static_pages/home"
  
  match '/news',        to: 'static_pages#news',        via: 'get'
  match '/events',      to: 'static_pages#events',      via: 'get'
  match '/membership',  to: 'static_pages#membership',  via: 'get'
  match '/about',       to: 'static_pages#about',       via: 'get'
  match '/contact',     to: 'static_pages#contact',     via: 'get'
  match '/gallery',     to: 'static_pages#gallery',     via: 'get'
  match '/officers',    to: 'static_pages#officers',    via: 'get'
  match '/members',     to: 'static_pages#members',     via: 'get'
  match '/admin',       to: 'static_pages#admin',       via: 'get'
end
