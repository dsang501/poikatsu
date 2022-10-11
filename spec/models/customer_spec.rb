require 'rails_helper'

RSpec.describe Customer, type: :model do
  describe 'ユーザー登録' do
    it "name、email、passwordとpassword_confirmationが存在すれば登録できること" do
      customer = build(:customer)
      expect(customer).to be_valid
    end
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