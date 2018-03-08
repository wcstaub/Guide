Rails.application.routes.draw do
  # get 'session/new'
	get 'signup' =>'users#new'
	get 'login' =>'sessions#new'
	get 'logout' =>'sessions#destroy'

	resources :users
	resources :sessions
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
