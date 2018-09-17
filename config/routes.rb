Rails.application.routes.draw do

  root to: 'toppages#index'
  
  
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  
  resources :tasks, except: [:new, :show]
  resources :users, only: [:index, :show, :new, :create]
end