Rails.application.routes.draw do
  resources :posts
  # login 
  get  		'/login',  to: 'sessions#new'
  post  	'/login',  to: 'sessions#create'
  delete 	'/logout', to: 'sessions#destroy'

  # get 'users/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users

  # Khi localhost:3000 cũng hiện ra được trang index
  root "users#index"
end
