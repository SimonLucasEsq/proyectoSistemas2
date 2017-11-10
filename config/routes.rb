Rails.application.routes.draw do
  resources :students
  resources :careers
  resources :attacheds
  resources :investigations
 
  resources :user
  resources :role
  resources :audits
  devise_for :users
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
