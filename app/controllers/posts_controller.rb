class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :update, :destroy]

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
  	Post.create(post_params)

  	redirect_to action: 'index'
  end

  # show the page which renders a pre filled form for a specific post
  def edit
  end

  # receive data and update in database of a specific post
  def update

  	@post.update(post_params)

  	redirect_to action: 'index'
  end


  def destroy

    @post.destroy

    redirect_to action: 'index'
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end


  def post_params
    return params[:post]
  end
  
end









