Rails.application.routes.draw do
  
  resources :replies
  resources :comments
  devise_for :users
  resources :features
  root 'videos#index'
  resources :artists
  resources :videos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
