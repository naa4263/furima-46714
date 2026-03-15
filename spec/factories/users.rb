FactoryBot.define do
  factory :user do
    nickname              { 'test' }
    email                 { Faker::Internet.email }
    password              { '000aaa' }
    password_confirmation { password }
    last_name             { 'テスト' }
    first_name            { 'アイウ' }
    last_name_kana        { 'テスト' }
    first_name_kana       { 'テスト' }
    birthday              { '2000-01-01' }
  end
end
