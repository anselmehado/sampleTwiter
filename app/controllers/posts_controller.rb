class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
  end

  def update
  end

  def destroy
  end

  def edit
  end

  def new
    @post = Post.new

  end
end
