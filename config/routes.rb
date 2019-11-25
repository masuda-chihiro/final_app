Rails.application.routes.draw do

  get 'sends/new'

  get '/carts', to:'purchases#carts'
  get '/history', to:'purchases#history'

  #get '/product_new', to:'products#new'
  #get '/product_edit', to:'products#edit'
  #get '/products_index', to:'products#index'
  #get '/product_show/:id', to:'products#show'

  root 'static_pages#home'
  get 'sessions/new'
  #get 'users/new'
  get 'static_pages/home'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  resources :products
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
