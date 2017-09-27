Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
  	resources :logs, except: [:new, :edit]
  	resources :users, except: [:index]
  end


end
