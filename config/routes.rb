Rails.application.routes.draw do
  get 'top/main'
  resources :users
  resources :tweets
  root 'top#main'
  
  post 'top/login'
  get 'top/logout'
  
  resources :likes
  
  #post 'likes/', to: 'likes#create'
  #delete 'likes/:id', to: 'likes#destroy'
end
