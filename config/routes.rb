Rails.application.routes.draw do
  devise_for :users
  root 'main#index'
  
  resources :main, only: :index # прямое обращение main controller к index методу
  post "exp", to: 'users#update' # отправляет экспу к юзер-апдейт контроллер-методу
  
  get 'get_new_monster', to: 'monsters#get_new_monster'# получаем монстра

  # Route special for me =D
    get 'fox', to: 'main#fox' # чит
    
  # Admin routes
    resources :items
    resources :monsters
    resources :users

end