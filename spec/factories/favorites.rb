FactoryBot.define do
  factory :favorite do
    association :card
    customer { card.customer }
  end
end