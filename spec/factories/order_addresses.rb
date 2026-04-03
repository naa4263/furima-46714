FactoryBot.define do
  factory :order_address do
    postal_code { '111-1112' }
    prefecture_id { 2 }
    city { '横浜市' }
    build { '建物' }
    street { 'テスト' }
    phonenumber { '08012345678' }
    token { 'tok_abcdefghijk00000000000000000' }
  end
end
