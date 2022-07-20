class Card < ApplicationRecord
  attachment :image
  
  def self.search(keyword)
    where("name LIKE ?", "%#{keyword}%")
    
  end
end
