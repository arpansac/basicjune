class UsersController < ApplicationController
  
	def index

		@users = User.all

		if session[:user_id]
			@signed_in_user = User.find(session[:user_id])
		end

	end

	
	def new
		@user = User.new
	end

	def create
		User.create(user_params)

		redirect_to action: 'index'
	end


	def edit
		@user = User.find(params[:id])
	end


	def update
		@user = User.find(params[:id])
		@user.update(user_params)

		redirect_to action: 'index'
	end

	def sign_in


	end

	def create_session
		u = User.find_by(email: params[:email], password: params[:password])

		if (u.blank?)
			return redirect_to action: 'sign_in'
		end
		# set the key user_id in the cookies equal to the found users id

		# instead of cookies, we use session because session is encrypted and hence, safer
		session[:user_id] = u.id
		redirect_to action: 'index'

	end


	def sign_out

		if !session[:user_id].blank?
			session.delete(:user_id)
		end

		redirect_to action: 'index'
	end



private
	def user_params
		params.require(:user).permit(:name, :age, :email)
	end














end







