class BokesController < ApplicationController
  def index
    # @odai = Odai.find(params[:odai_id])
    # @boke = Boke.find(params[:boke_id])
  end
  def new
    @odai = Odai.find(params[:odai_id])
    @bokete = @odai.bokes.new
  end

  def create
    @bokete = current_user.bokes.new(boke_params)
    if @bokete.save
      flash.now[:notice] = 'ボケの作成に成功'
      redirect_to :root
    else
      flash.now[:notice] = 'ボケの作成にシッパイ'
      render :new
    end
  end

  private
  def boke_params
      params.require(:boke).permit(:body).merge(odai_id: params[:odai_id])
  end
end
