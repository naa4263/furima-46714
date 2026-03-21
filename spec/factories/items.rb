FactoryBot.define do
  factory :item do
    product { '商品' }
    explanation { '商品の説明' }
    category_id { 2 }
    situation_id { 2 }
    delivery_fee_id { 2 }
    prefecture_id { 2 }
    days_id { 2 }
    price { 1000 }

    association :user

    after(:build) do |item|
      item.image.attach(
        io: File.open(Rails.root.join('public/images/test_image.png')),
        filename: 'test_image.png'
      )
    end
  end
end
