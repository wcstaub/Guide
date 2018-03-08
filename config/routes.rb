Rails.application.routes.draw do

  root 'subjects#show_puzzle'
  get 'show_puzzle' => 'subjects#show_puzzle'
  get 'show_all_subjects' => 'subjects#index'
  get 'show_all_resources' => 'resources#index'
  get 'sessions_new' => 'sessions#new'
  get 'show_resources/:id' => 'subjects#show_resources', as: 'show_resources'
	get 'signup' =>'users#new'
	get 'login' =>'sessions#new'
	get 'logout' =>'sessions#destroy'
	get 'about' => 'welcome#about'

	resources :comments
  resources :resources
  resources :subjects 
  resources :users
	resources :sessions
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
