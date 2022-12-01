# frozen_string_literal: true

# comments controllere
class CommentsController < ApplicationController
  def new
    @comments = Comment.new
  end


  def create
    @current_post = Post.find(params[:post_id])
    @comments = @current_post.comments.new(comment_params)
    @comments.post_id = @current_post.id
    @comments.author_id = Current.user.id
    if @comments.save
      redirect_to "/users/#{@current_post.author.id}/posts/#{@current_post.id}"
    else
      render :index
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end