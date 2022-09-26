class Card < ApplicationRecord
  attachment :image

  def self.search(keyword)
    where('name LIKE ?', "%#{keyword}%")
  end

  belongs_to :customer, optional: true
  has_many :favorites, dependent: :destroy

  def favorited?(customer)
    favorites.where(customer_id: customer.id).exists?
  end
end
