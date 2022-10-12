require 'rails_helper'

RSpec.describe 'ユーザーログイン', type: :system do
  before do
    @customer = FactoryBot.build(:customer)
  end
  context 'ユーザーログインができるとき' do 
    it '正しい情報を入力すればユーザーログインができる' do
      # トップページに移動する
      visit root_path

      # トップページにログインページへ遷移するボタンがあることを確認する
      expect(page).to have_content('ログイン')

      # ログインページへ移動する
      visit customer_session_path

      # ユーザー情報を入力する
      fill_in 'customer[email]', with: @customer.email
      fill_in 'customer[password]', with: @customer.password
    end
  end
end
