class PostsController < ApplicationController
  def index

  	@posts = Post.all
  end


  def new

  end

  def create

  	
  	new_post = Post.create(title: params[:title], content: params[:content])

  	redirect_to action: 'index'
  end


  # def something_else
  # 	render 
  # end
end
