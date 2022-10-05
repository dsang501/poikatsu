FactoryBot.define do
  factory :customer do
    first_name { "田中" }
    last_name { "太郎" }
    kana_first_name { "タナカ" }
    kana_last_name { "タロウ" }
    email { "test@test.com" }
    password { "testtest" }
  end
end
