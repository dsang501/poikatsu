class Customer::CardsController < ApplicationController

  before_action :authenticate_customer!, only: [:show]

  def index
	end

	def show
    @cards = Card.all
    @card = Card.find(params[:id])
  end

  def about
  end

	private
	def card_params
		parmas.require(:card).permit(:image ,:name, :explanation, :tax_out_price, :is_sale)
	end
end
