Rails.application.routes.draw do
  
  root to: 'welcome#index'

  get '/about' => 'welcome#about'

  get 'users/show'

  devise_for :users
  
end
