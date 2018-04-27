Rails.application.routes.draw do
    # root page
  root 'static_pages#home'

  # static pages routes
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'

  #users routes
  get  '/signup',  to: 'users#new'
  resources :users

  #sessions routes
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
