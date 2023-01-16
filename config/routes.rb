Rails.application.routes.draw do
  root 'top#main'
  get 'top/main'
  resources :users
  resources :tweets
  
  
  post 'top/login'
  get 'top/logout'
  
  resources :likes
  
  #post 'likes/', to: 'likes#create'
  #delete 'likes/:id', to: 'likes#destroy'
end
