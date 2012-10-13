class DislikesController < ApplicationController
	before_filter :authenticate_user!
  
  # create a dislike
  def create
    @post = Post.find(params[:post_id])
    @dislike = @post.dislikes.build(params[:dislike])
    @dislike.user = current_user
    @post.rating += params[:dislike][:rate].to_i

    respond_to do |format|
      if @dislike.save && @post.save
        format.html { redirect_to(@post, :notice => 'OK!') }
      else
        format.html { redirect_to(@post, :notice => 'There was an error saving your dislike.') }
      end 
    end    
  end

  # update a dislike
  def update
    @dislike = current_user.dislikes.find(params[:id])
    @post = Post.find(params[:post_id])
    @post.rating += params[:dislike][:rate].to_i - @dislike.rate

    respond_to do |format|
      if @dislike.update_attributes(params[:dislike]) && @post.save
        format.html { redirect_to(@post, :notice => 'OK!') }
      else
        format.html { redirect_to(@post, :notice => 'There was an error saving your dislike.') }
      end  
    end
  end

  # remove a dislike
  def destroy
    @dislike = current_user.dislikes.find(params[:id])
    @post = Post.find(params[:post_id])
    @post.rating -= @dislike.rate
    @post.save
    
    @dislike.destroy
    
    respond_to do |format|
      format.html { redirect_to @post }
    end
  end
end
