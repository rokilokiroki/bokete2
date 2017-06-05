class ReviewsController < ApplicationController
  def create
    @review = Review.create(odai_id: params[:odai_id], boke_id: params[:boke_id], user_id: current_user.id)
  end

  private
  def review_params
    params.permit(:text, :tweet_id)
  end
end
