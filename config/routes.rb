Rails.application.routes.draw do    
  devise_for :users
root 'news#index' 
resources :news do
resources :comments, only: [:create]
  end
resources :users, only: [:show]
end