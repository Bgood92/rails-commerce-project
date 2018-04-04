class Product < ApplicationRecord
  has_many :product_genres
  has_many :genres, through: :product_genres
  accepts_nested_attributes_for :product_genres, allow_destroy: true

  # has_many :order_details
  # has_many :orders, through: :order_details

end
