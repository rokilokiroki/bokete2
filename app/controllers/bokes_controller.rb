class BokesController < ApplicationController
  def index

    hash = {}
    Boke.all.each do |boke|
      boke_id = boke.id
      average = boke.comments.average(:rate).to_i
      hash["#{boke_id}"] = average
    end
    bokes = Hash[ hash.sort_by{ |_, v| -v }]

    if bokes == {}
      redirect_to odais_path

    else
      boke_id = bokes.first[0].to_i
      @boke = Boke.find(boke_id)
      @odai = @boke.odai
      @star = @boke.comments.sum(:rate)
      @new_boke = Boke.last
      @new_odai = @new_boke.odai
      @new_star = @new_boke.comments.sum(:rate)
      rates =  Comment.group(:boke_id).order('count_rate DESC').limit(3).count(:rate).keys
      @rates = rates.map { |id| Boke.find(id) }
      @new_bokes = Boke.includes(:odai).order("created_at DESC").limit(3)
      @rensou = RensouBoke.last
        if @rensou == nil
          render :template => "bokes/index"
        else
          @rensou_cards = @rensou.card.odais
        end
    end
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
      @odai = Odai.find(params[:odai_id])
      flash.now[:notice] = 'ボケの作成にシッパイ'
      render :new
    end
  end

  private

  def boke_params
    params.require(:boke).permit(:body).merge(odai_id: params[:odai_id])
  end

end
