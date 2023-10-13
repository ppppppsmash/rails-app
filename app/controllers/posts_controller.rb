class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      flash[:success] = "Post was successfully created."
      redirect_to posts_path
    else
      flash.now[:failure] = "Post was not created."
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      flash[:success] = "Post was successfully created."
      redirect_to post_path
    else
      flash.now[:failure] = "Post was not created."
      render :edit
    end
  end

  def destroy
  end

  private
  
  def post_params
    params.require(:post).permit(
      :title,
      :start_at,
      :end_at,
      :is_all_day,
      :memo
    )
  end
end