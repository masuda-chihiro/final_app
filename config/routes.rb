Rails.application.routes.draw do

  get 'purchases/sales'
  get 'sends/new'
  post 'sends/create'
  get 'sends/show'
  root 'static_pages#home'
  get 'sessions/new'
  get 'static_pages/home'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/history', to: 'purchases#index'
  resources :users
  resources :products
  resources :carts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
