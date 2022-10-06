require 'rails_helper'

RSpec.describe Favorite, type: :model do
  before do
    customer = FactoryBot.create(:customer)
    card = FactoryBot.create(:card)
    @favorite = FactoryBot.build(:favorite, customer_id: customer.id, card_id: card.id)
  end

  describe 'お気に入り機能' do
    it "customer_idとcard_idがあれば保存できる" do
      expect(@favorite).to be_valid
    end
  end
end