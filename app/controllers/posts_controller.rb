class PostsController < ApplicationController
  

  def index

  	@posts = Post.all
  end


  def new
  	@post = Post.new

  end


  def create

  	# this is when we created the html form by hand
  	# Post.create(title: params[:title], content: params[:content])

  	# rails form helper automatically creates the fields and assigns them name
  	Post.create(title: params[:post][:title], content: params[:post][:content])

  	redirect_to action: 'index'
  end

  # show the page which renders a pre filled form for a specific post
  def edit
  	@post = Post.find(params[:id])
  end

  # receive data and update in database of a specific post
  def update
  	@post = Post.find(params[:id])

  	@post.update(title: params[:post][:title], content: params[:post][:content])

  	redirect_to action: 'index'
  end



  # def something_else
  # 	render 
  # end
end









