require 'rails_helper'

RSpec.describe Customer, type: :model do
  it "名前、フリガナ、メアド、パスワードがなければ無効であること" do
    customer = Customer.new(
          first_name: "田中",
          last_name: "太郎",
          kana_first_name: "タナカ",
          kana_last_name: "タロウ",
          email: "test@test.com",
          password: "testtest"
      )
      expect(customer).to be_valid
  end

  it "名前がなければ無効であること" do
    customer = Customer.new(first_name: nil)
    expect(customer.valid?).to eq(false)
  end

  it "苗字がなければ無効であること" do
    customer = Customer.new(last_name: nil)
    expect(customer.valid?).to eq(false)
  end

  it "メアドがなければ無効であること" do
    customer = Customer.new(email: nil)
    expect(customer.valid?).to eq(false)
  end

end