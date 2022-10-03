class Admin::CardsController < ApplicationController
  before_action :set_card, only: %i[show edit update]
  before_action :authenticate_admin!

  def top
    @cards = Card.all
  end

  # GET /cards/new
  def new
    @card = Card.new
  end

  # POST /cards or /cards.json
  def create
    @card = Card.new(card_params)
    if @card.save
      flash[:notice] = 'カードを登録しました。'
      redirect_to admin_card_path(@card)
    else
      render :new
    end
  end

  # GET /cards or /cards.json
  def index
    @cards = Card.all
  end

  # GET /cards/1 or /cards/1.json
  def show
    @card = Card.find(params[:id])
  end

  # GET /cards/1/edit
  def edit
    @card = Card.find(params[:id])
  end

  # PATCH/PUT /cards/1 or /cards/1.json
  def update
    @card = Card.find(params[:id])
    if @card.update(card_params)
      flash[:success] = 'カード内容を変更しました。'
      redirect_to admin_card_path(@card)
    else
      render :edit
    end
  end

  def search
    @cards = Card.search(params[:keyword])
    @keyword = params[:keyword]
    render 'index'
  end

  private

  # Only allow a list of trusted parameters through.
  def card_params
    params.require(:card).permit(:name, :description, :annual_fee, :Reduction_rate, :point, :image)
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_card
    # @card = Card.find(params[:id])
  end
end
