FactoryBot.define do
  factory :card do
    name { Faker::Lorem.characters(number:10) }
    description { "テスト" }
    annual_fee { "テスト" }
    Reduction_rate { "テスト" }
    point { "テスト" }
  end
end
