class CommentsController < ApplicationController
  def create
    @comment = Comment.create(rate: params[:rate],text: params[:text], boke_id: params[:boke_id], odai_id: params[:odai_id],user_id: current_user.id)
    respond_to do |format|
      format.html {redirect_to :root}
      format.json
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:rate, :text, :boke_id, :odai_id)
  end
end
