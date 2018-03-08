Rails.application.routes.draw do

  root 'subjects#show_puzzle'
  get show_puzzle => 'subjects#show_puzzle'
  get 'sessions/new' => 'sessions#new'
  get 'show_resources/:id' => 'subjects#show_resources', as: 'show_resources'
	get 'signup' =>'users#new'
	get 'login' =>'sessions#new'
	get 'logout' =>'sessions#destroy'

	resources :comments
  resources :resources
  resources :subjects 
  resources :users
	resources :sessions
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
