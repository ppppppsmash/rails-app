class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  # def create
  #   @post = Post.new(post_params)

  #   if @post.save
  #     redirect_to posts_path
  #   else
  #     render :new
  #   end
  # end

  def show
  end

  def edit
  end

  # def update
  #   @post = Post.find(params[:id])

  #   if @post.update()

  #   else

  #   end
  # end

  def destroy
  end
end