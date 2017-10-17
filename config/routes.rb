Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
  	resources :logs
    resources :users, only: [:show, :update]

    get 'signup', to: 'users#new'
    post 'signup', to: 'users#create'


   
    post 'login', to: 'session#create'
    delete 'logout', to: 'session#destroy'
 
  end


end
