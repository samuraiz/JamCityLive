class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def show
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    @comment.user = current_user
    if @comment.save
      redirect_to @post
      flash[:notice] = "Comment added"
    else
      flash[:danger] = "error"
    end
  end

  def update
    @comment.update(comment_params)
    redirect_to post_path
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])

    # authorize @comment
    if @comment.destroy
      redirect_to @post
    else
      redirect_to [@topic, @post]
    end
  end

  private
  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:post_id, :user_id, :content)
  end

end