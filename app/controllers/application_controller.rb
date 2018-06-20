class ApplicationController < ActionController::Base
  # this is the parent controller for all the other controllers we will make

  # name of the file and the class are related, should be exactly like they are here
  # application_controller.rb
  # ApplicationController


  # the first action inside the controller
  def hello_rails

  	html_output = "<html><body><h1>Hello Rails</h1></body></html>"
  	# render the string to the browser
  	# .html_safe prevents escaping of the html tags
  	render html: html_output.html_safe
  end
end
