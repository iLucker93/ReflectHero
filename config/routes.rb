Rails.application.routes.draw do
  devise_for :users
  root 'main#index'
  
  resources :main
  post "exp", to: 'users#update'
  
  get 'get_new_monster', to: 'monsters#get_new_monster'

  # Route special for me
    get 'fox', to: 'main#fox'
    
  # Admin routes
    resources :items
    resources :monsters
    resources :users

end