Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
  	resources :logs, except: [:new, :edit]
  	resources :users, except: [:index, :new, :create, :destroy]
  	get 'videos' => "videos#info"
		
		post 'signup' => 'users#create'

  	get 'login' => 'sessions#new'
  	post 'login' => 'sessions#create'
  	delete 'logout' => 'sessions#destroy'

  end


end
