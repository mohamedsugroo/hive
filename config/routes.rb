Rails.application.routes.draw do
  
  resources :replies, except: [:index]
  resources :comments, except: [:index]
  devise_for :users
  resources :features, except: [:index]
  root 'videos#index'
  resources :artists
  resources :videos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
