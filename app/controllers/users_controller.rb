class UsersController < ApplicationController
  # name of the file and the class are related, should be exactly like they are here
  # users_controller.rb
  # UsersController

  	# another action which will render the file views/users/users_list.html.erb into the browser
	def index

		@users = User.all

		# return render html: "something something"
	end

	# we need 2 actions to create a user

	# this new is used to render a form to create a user
	def new
		@user = User.new
	end

	# create is used to receive data from the form and create a user in the database table
	def create
		User.create(
				email: params[:user][:email],
				password: params[:user][:password],
				name: params[:user][:name],
				age: params[:user][:age]
			)

		redirect_to action: 'index'
	end


	def edit
		@user = User.find(params[:id])
	end


	def update
		@user = User.find(params[:id])
		@user.update(
				email: params[:user][:email],
				password: params[:user][:password],
				name: params[:user][:name],
				age: params[:user][:age]
			)

		redirect_to action: 'index'
	end


















end







