Rails.application.routes.draw do

  resources :comments
# USERS CONTROLLER ROUTES
  
  get 'users/:id/edit', to: 'users#edit'
  patch 'users/:id', to: 'users#update', as: :user
  get 'users', to: 'users#index'
  get 'users/new', to: 'users#new'
  post 'users', to: 'users#create'

  get 'users/sign_in', to: 'users#sign_in'
  post 'users/create_session', to: 'users#create_session'
  get 'users/sign_out', to: 'users#sign_out'



# POSTS CONTROLLER

  # creating route to destroy a specific post by :id
  delete 'posts/:id', to: 'posts#destroy', as: :destroy_post

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
