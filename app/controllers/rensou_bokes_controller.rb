class RensouBokesController < ApplicationController
  def new
  end

  def create
    @card = Card.new
    @card.odai_ids = odai_ids
    @card.save
    @rensou = current_user.rensou_bokes.new(boke_params)
    @rensou.save
    if @rensou.valid?
       redirect_to :root
    else
       render 'odais/index'
    end
  end

  def show

  end

  private

  def boke_params
    params.permit(:body).merge(card_id: @card.id)
  end

  def odai_ids
    params.require(:hukusu_odais_ids).split(" ").map(&:to_i)
  end
end
