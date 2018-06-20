class UsersController < ApplicationController
  # name of the file and the class are related, should be exactly like they are here
  # users_controller.rb
  # UsersController

  	# another action which will render the file views/users/users_list.html.erb into the browser
	def users_list


		@my_variable = 'something something else'

		# return render html: "something something"
	end

end