require 'rails_helper'

RSpec.describe Customer, type: :request do
  describe 'GET #new' do
    it 'リクエストが成功すること' do
      get new_customer_session_path
      expect(response.status).to eq 200
    end
  end

  describe 'POST #create' do
    it 'リクエストが成功すること' do
      post customer_session_path, params: { customer: FactoryBot.attributes_for(:customer) }
      expect(response.status).to eq 200
    end
  end

  describe 'DELETE #destroy' do
    let!(:customer) { FactoryBot.create :customer }
    it 'リクエストが成功すること' do
      delete customer_registration_path customer
      expect(response.status).to eq 401
    end
  end
end
