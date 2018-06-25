Rails.application.routes.draw do

# USERS CONTROLLER ROUTES
  get 'users', to: 'users#index'
  get 'users/new', to: 'users#new'
  post 'users', to: 'users#create'

  



  patch 'posts/:id', to: 'posts#update', as: :post
 
  get 'posts/:id/edit', to: 'posts#edit'
  get 'posts/new', to: 'posts#new'
  get 'posts', to: 'posts#index'
  post 'posts', to: 'posts#create'

	# get <url>, to '<controller_name>#<action_name>'
  	get 'hello_rails', to: 'application#hello_rails'

  	# get 'users_list', to: 'users#users_list'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  	root 'posts#index'

end
