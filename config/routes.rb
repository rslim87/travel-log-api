Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
  	resources :logs, except: [:new, :edit]

    get 'signup', to: 'users#new'
    post 'signup', to: 'users#create'

    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy'
 
  end


end
