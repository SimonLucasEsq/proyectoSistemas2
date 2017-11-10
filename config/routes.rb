Rails.application.routes.draw do
  resources :documents
  resources :extensions
  resources :managers
  resources :states
  resources :students
  resources :careers
  resources :attacheds
  resources :universitarios
  resources :carreras
  resources :investigations do
  	member do
  		get :show_attacheds
  	end
  end
  resources :user
  resources :role
  resources :audits
  devise_for :users
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
