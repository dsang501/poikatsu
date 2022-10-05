require 'rails_helper'

RSpec.describe Favorite, type: :model do
  before do
    customer = FactoryBot.create(:customer)
    card = FactoryBot.create(:card)
    @favorite = FactoryBot.build(:favorite, customer_id: customer.id, card_id: card.id)
  end

  describe 'お気に入り機能' do
    context 'お気に入りできる場合' do
      it "customer_idとcard_idがあれば保存できる" do
        expect(@favorite).to be_valid
      end

      it "card_idが同じでもcustomer_idが違えばお気に入りできる" do
        another_favorite = FactoryBot.create(:favorite)
        expect(FactoryBot.create(:favorite, customer_id: another_favorite.customer_id)).to be_valid
      end

      it "customer_idが同じでもcard_idが違えばお気に入りできる" do
        another_favorite = FactoryBot.create(:favorite)
        expect(FactoryBot.create(:favorite, card_id: another_favorite.card_id)).to be_valid
      end
    end

    context 'お気に入りできない場合' do
      it "customer_idが空ではお気に入りできない" do
        @favorite.customer_id = nil
        @favorite.valid?
        expect(@favorite.errors.full_messages).to include "Customer must exist"
      end

      it "card_idが空ではお気に入りできない" do
        @favorite.card_id = nil
        @favorite.valid?
        expect(@favorite.errors.full_messages).to include "Card must exist"
      end
    end
  end
end