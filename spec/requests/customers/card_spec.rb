require 'rails_helper'

  describe 'GET #index' do
    before do
      FactoryBot.create :card
    end

    it 'リクエストが成功すること' do
      get cards_path
      expect(response.status).to eq 200
    end

    it 'カード名が表示されていること' do
      get cards_path
      expect(response.body).to include "card"
    end
  end
