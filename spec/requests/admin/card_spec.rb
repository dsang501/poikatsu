require 'rails_helper'

RSpec.describe Card, type: :request do
  describe 'GET #index' do
    before do
      FactoryBot.create :card
    end

    it 'リクエストが成功すること' do
      get admin_cards_path
      expect(response.status).to eq 302
    end
  end
  
  describe 'GET #show' do
    let(:card) { FactoryBot.create :card }
    it 'リクエストが成功すること' do
      get admin_card_path card.id
      expect(response.status).to eq 302
    end
  end

  describe 'GET #new' do
    it 'リクエストが成功すること' do
      get new_admin_card_path
      expect(response.status).to eq 302
    end
  end

  describe 'GET #edit' do
    let(:card) { FactoryBot.create :card }
    it 'リクエストが成功すること' do
      get edit_admin_card_path card
      expect(response.status).to eq 302
    end
  end

  describe 'POST #create' do
    it 'リクエストが成功すること' do
      post admin_cards_path, params: { card: FactoryBot.attributes_for(:card) }
      expect(response.status).to eq 302
    end
  end

  describe 'PUT #update' do
  let(:card) { FactoryBot.create :card }
    context 'パラメータが妥当な場合' do
      it 'リクエストが成功すること' do
        put admin_card_path card, params: { card: FactoryBot.attributes_for(:card) }
        expect(response.status).to eq 302
      end
    end
  end
end