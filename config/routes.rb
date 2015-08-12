Rails.application.routes.draw do
  
  resources :users
  resources :sessions

  root :to => 'users#new'
  
  get 'sessions/new'

  get 'users/new'
  
  get 'log_out' => 'sessions#destroy', :as => 'log_out'
  
  get 'log_in' => 'sessions#new', :as => 'log_in'
  
  get "sign_up" => 'users#new', :as => 'sign_up'
  

end
