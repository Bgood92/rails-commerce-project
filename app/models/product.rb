class Product < ApplicationRecord
  has_many :product_genres
  has_many :genres, through: :product_genres
  has_many :order_details
  has_many :orders, through: :order_histories
  validates :name, :price, :stock_quantity, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validates :stock_quantity, numericality: { only_integer: true, greater_than: 0 }
end
