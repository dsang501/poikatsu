class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, :kana_first_name, :kana_last_name,
            presence: true
  validates :kana_first_name, :kana_last_name,
      format: { with: /\A[\p{katakana}\p{blank}ー－]+\z/, message: "カタカナで入力して下さい。"}

      has_many :cards, dependent: :destroy
      has_many :favorites, dependent: :destroy

# 退会機能
  def active_for_authentication?
    super && (self.is_valid == false)
  end
end
