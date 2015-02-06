class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:destroy]
  before_action :is_admin?, only: [:destroy]


  respond_to :html

  def is_admin?
    redirect_to root_path unless current_user.admin?
  end

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
    @post.save
  end

  def update
    @post.update(post_params)
  end

  def destroy
    @post.destroy
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :content, :comment_id, :pic_art)
    end
end
