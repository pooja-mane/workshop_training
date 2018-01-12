class CommentsController < ApplicationController

  def create
    @coach = Coach.find params[:coach_id]
    @comment = @coach.comments.new(comment_params)
    @comment.save
    @comments = @coach.comments
  end

  def destroy
    
  end

  def comment_params
    params.require(:comment).permit!
  end
end
