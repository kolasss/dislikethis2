class CommentsController < ApplicationController
	before_filter :authenticate_user!

  # create a comment and bind it to an post and a user  
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(params[:comment])
    @comment.user = current_user

    respond_to do |format|
      if @comment.save
        format.html { redirect_to(@post, :notice => 'Comment was successfully created.') }
      else
        format.html { redirect_to(@post, :notice => 'There was an error saving your comment (empty comment or comment way to long).') }
      end
    end
  end
  
  # remove a comment
  def destroy
    @comment = current_user.comments.find(params[:id])
    @post = Post.find(params[:post_id])
    @comment.destroy
    
    respond_to do |format|
      format.html { redirect_to @post }
    end
  end
end
