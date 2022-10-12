require 'rails_helper'

RSpec.describe 'ユーザー新規登録', type: :system do
  before do
    @customer = FactoryBot.build(:customer)
  end
  context 'ユーザー新規登録ができるとき' do 
    it '正しい情報を入力すればユーザー新規登録ができる' do
      # トップページに移動する
      visit root_path

      # トップページに新規登録ページへ遷移するボタンがあることを確認する
      expect(page).to have_content('新規登録')

      # 新規登録ページへ移動する
      visit new_customer_registration_path

      # ユーザー情報を入力する
      fill_in 'customer[first_name]', with: @customer.first_name
      fill_in 'customer[last_name]', with: @customer.last_name
      fill_in 'customer[kana_first_name]', with: @customer.kana_first_name
      fill_in 'customer[kana_last_name]', with: @customer.kana_last_name
      fill_in 'customer[email]', with: @customer.email
      fill_in 'customer[password]', with: @customer.password
      fill_in 'customer[password_confirmation]', with: 'testtest'

      # 新規登録ボタンを押すとユーザーモデルのカウントが1上がることを確認する
      expect{
        find('input[name="commit"]').click
      }.to change { Customer.count }.by(1)
    end
  end
end
