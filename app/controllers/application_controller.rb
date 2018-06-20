class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception

  def hello_rails
  	render html: "<html><body><h1>Hello Rails</h1></body></html>".html_safe
  end
end
