require 'rails_helper'

RSpec.describe Favorite, type: :model do
  describe '#create,#destroy' do
      it 'ユーザーが他の投稿をいいね、いいね解除できる' do
        # お気に入りボタンを押す
        find('#button').click
        expect(page).to have_selector '#liking-btn'
        expect(@answer.likes.count).to eq(1)

        # いいねを解除する
        find('#button2').click
        expect(page).to have_selector '#nolike-btn'
        expect(@answer.likes.count).to eq(0)
        end
     end
end