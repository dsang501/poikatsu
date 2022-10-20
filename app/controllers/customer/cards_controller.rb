class Customer::CardsController < ApplicationController
  before_action :detect_devise_variant

  def top
    @cards = Card.all
    @all_ranks = Card.find(Favorite.group(:card_id).order('count(card_id) desc').limit(3).pluck(:card_id))
  end

  def index
    @cards = Card.all
  end

  def show
    @cards = Card.all
    @card = Card.find(params[:id])
  end

  def search
    @cards = Card.search(params[:keyword])
    @keyword = params[:keyword]
    render 'index'
  end

  def about; end

  private

  def card_params
    parmas.require(:card).permit(:image, :name, :description)
  end

  def detect_devise_variant  # (1)と同じ名前
    case request.user_agent
    when /iPad/
        request.variant = :tablet
    when /iPhone/
        request.variant = :mobile
    end
  end
end
