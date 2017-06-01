class OdaisController < ApplicationController

  def index
    @odais = Odai.includes(:user).order("created_at DESC")
  end

  def new
    @odai = Odai.new
  end

  def create
    @odai = current_user.odais.new(odai_params)
    if @odai.save
      redirect_to :root
    else
      render :new
    end
  end

  def odai_params
    params.require(:odai).permit(:image)
  end

end
