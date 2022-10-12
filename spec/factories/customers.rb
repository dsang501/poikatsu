FactoryBot.define do
  factory :customer do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    kana_first_name { "タナカ" }
    kana_last_name { "タロウ" }
    email { Faker::Internet.email }
    password { "testtest" }
  end
end
