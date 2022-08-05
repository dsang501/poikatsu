class Customer::CardsController < ApplicationController

  def top
    @cards = Card.all
	end

  def index
    @cards = Card.all
	end

	def show
    @cards = Card.all
    @card = Card.find(params[:id])
  end

  def about
  end

  def search
    @cards = Card.search(params[:keyword])
    @keyword = params[:keyword]
    render "index"
  end

	private
	def card_params
		parmas.require(:card).permit(:image ,:name, :description)
	end
  
end
