Rails.application.routes.draw do
  resources :documents
  resources :extensions
  resources :managers
  resources :states
  resources :students
  resources :careers
  resources :attacheds
  resources :investigations
  resources :universitarios
  resources :carreras
 
  resources :user
  resources :role
  
  devise_for :users
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
