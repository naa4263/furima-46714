class Item < ApplicationRecord
  belongs_to :user
  has_one :order
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :situation
  belongs_to :delivery_fee
  belongs_to :prefecture
  belongs_to :days

  validates :product, presence: true
  validates :explanation, presence: true
  validates :category_id, presence: true, numericality: { other_than: 1 }
  validates :situation_id, presence: true, numericality: { other_than: 1 }
  validates :delivery_fee_id, presence: true, numericality: { other_than: 1 }
  validates :prefecture_id, presence: true, numericality: { other_than: 1 }
  validates :days_id, presence: true, numericality: { other_than: 1 }
  validates :price,
            presence: true,
            numericality: {
              only_integer: true,
              greater_than_or_equal_to: 300,
              less_than_or_equal_to: 9_999_999
            }
  validates :image, presence: true
end
