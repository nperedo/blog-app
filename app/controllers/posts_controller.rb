class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(
      title: params["post"]["title"],
      content: params["post"]["content"],
      author: params["post"]["author"]
    )

    if @post.save
      redirect_to @post, notice: 'Post was succesful'
    else 
      render :new
    end 
  end
end
