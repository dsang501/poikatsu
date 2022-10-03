require 'rails_helper'

RSpec.describe Card, type: :model do
  it "カード名前、説明、年会費、還元率、ポイント名がなければ無効であること" do
    card = Card.new(
          name: "楽天カード",
          description: "テスト",
          annual_fee: "テスト",
          Reduction_rate: "テスト",
          point: "テスト"
      )
      expect(card).to be_valid
  end
end