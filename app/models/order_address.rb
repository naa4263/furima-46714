class OrderAddress
  include ActiveModel::Model
  attr_accessor :postal_code, :prefecture_id, :city, :build, :street, :phonenumber, :user_id, :item_id, :token

  with_options presence: true do
    validates :postal_code
    validates :prefecture_id
    validates :city
    validates :street
    validates :phonenumber
    validates :user_id
    validates :item_id
    validates :token
  end

  validates :postal_code, format: { with: /\A\d{3}-\d{4}\z/ }
  validates :prefecture_id, numericality: { other_than: 1 }
  validates :phonenumber, format: { with: /\A\d{10,11}\z/ }

  def save
    order = Order.create(user_id: user_id, item_id: item_id)
    Address.create(postal_code: postal_code, prefecture_id: prefecture_id, city: city, build: build, street: street,
                   phonenumber: phonenumber, order_id: order.id)
  end
end
