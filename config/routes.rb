Rails.application.routes.draw do

  	get 'hello_rails', to: 'application#hello_rails'

  	get 'users_list', to: 'users#users_list'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
