class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show
    #@post = Post.find(params[:id])
  end



  def edit
     #@post = Post.find(params[:id])
  end

  def new
    @post = Post.new

  end



  def create
      @post = Post.new(post_params)
      if params[:back]
        render :new
      else
        if @post.save
          redirect_to posts_path, notice: "ブログを作成しました！"
        else
          render :new
        end
      end
    end







  # def create
  #   @post = Post.new(post_params)
  #     if @post.save
  #       # 一覧画面へ遷移して"I have created a blog!"とメッセージを表示します。
  #    redirect_to posts_path, notice: "I have created a post"
  #    #redirect_to new_blog_path
  #  else
  #    render :new
  #  end
  #   # renvoi une nvlle page pour poster a nouveau un blog redirect_to
  #   #"/blogs/new"= redirect_to new_blog_path
  #   #redirect_to "/blogs/new"
  #   #redirect_to new_blog_path
  # end

  def update

    #@blog = Blog.find(params[:id])
    if @post.update(post_params)
      redirect_to posts_path, notice: "I edited the blog!"
    else
      render :edit
    end
  end

    def set_post
      @post = Post.find(params[:id])
    end

  def destroy
    @post.destroy
    redirect_to posts_path, notice:"I deleted the blog!"
  end

    def confirm
      @post = Post.new(post_params)
    #  render :new if @post.invalid?
    end


  private
  def post_params
    params.require(:post).permit(:Autheur, :content)
  end



end
