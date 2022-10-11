require 'rails_helper'

  describe 'GET #index' do
    before do
      FactoryBot.create :customer
    end

    it 'リクエストが成功すること' do
      get admin_customers_path
      expect(response.status).to eq 302
    end
  end

  describe 'GET #show' do
    context 'ユーザーが存在する場合' do
      let(:customer) { FactoryBot.create :customer }
      it 'リクエストが成功すること' do
        get admin_customer_path customer.id
        expect(response.status).to eq 302
      end
    end
  end

  describe 'GET #new' do
    it 'リクエストが成功すること' do
      get new_admin_session_path
      expect(response.status).to eq 200
    end
  end

  describe 'GET #edit' do
    let(:customer) { FactoryBot.create :customer }
    it 'リクエストが成功すること' do
      get edit_admin_customer_path customer
      expect(response.status).to eq 302
    end
  end

  describe 'POST #create' do
    it 'リクエストが成功すること' do
      post admin_session_path, params: { customer: FactoryBot.attributes_for(:customer) }
      expect(response.status).to eq 200
    end
  end

  describe 'DELETE #destroy' do
    let!(:customer) { FactoryBot.create :customer }

    it 'リクエストが成功すること' do
      delete admin_registration_path customer
      expect(response.status).to eq 401
    end
  end
