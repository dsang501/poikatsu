class Customer::FavoritesController < ApplicationController
  before_action :authenticate_customer!

  def create
    @card_favorite = Favorite.new(customer_id: current_customer.id, card_id: params[:card_id])
    @card_favorite.save
    redirect_to card_path(params[:card_id])
  end

  def destroy
    @card_favorite = Favorite.find_by(customer_id: current_customer.id, card_id: params[:card_id])
    @card_favorite.destroy
    redirect_to card_path(params[:card_id])
  end
end
