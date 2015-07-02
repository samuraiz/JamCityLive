class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def show
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    if @comment.save
      redirect_to @post
      flash.now[:notice] = "Comment added"
    else
      flash.now[:danger] = "error"
    end
  end

  def update
    @comment.update(comment_params)
    redirect_to comment_path
  end

  def destroy
    @comment.destroy
    redirect_to post_comments_path
  end

  private
  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:post_id, :content)
  end

end