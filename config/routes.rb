Rails.application.routes.draw do
  
  root to: 'welcome#index'

  get '/about' => 'welcome#about'

  devise_for :users
  
  resources :users, only: [:show]

end
