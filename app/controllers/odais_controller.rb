class OdaisController < ApplicationController

  def index
    @odais = Odai.includes(:user).order("created_at DESC")
  end

  def new
    @odai = Odai.new
  end

  def create
    @odai = current_user.odais.new(post_params)
    if @odai.save
    else
      render :new
    end
  end

  def post_params
    params.require(:odai).permit(:image)
  end

end
