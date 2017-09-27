Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
  	resources :logs, except: [:new, :edit]
  	resources :users, except: [:index, :new, :create]
  	get 'videos' => "videos#info"
		
		get 'signup' => 'users#new'
		post 'signup' => 'users#create'

  	get 'login' => 'sessions#new'
  	post 'login' => 'sessions#create'
  	delete 'logout' => 'sessions#destroy'

  end


end
