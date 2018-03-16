class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :status
  has_many :order_histories
  has_many :products, through: :order_histories
end