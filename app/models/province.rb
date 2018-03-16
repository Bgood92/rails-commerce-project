class Province < ApplicationRecord
  has_many :customers
  validates :name, :tax_rate, presence: true
  validates :tax_rate, numericality: { greater_than_or_equal_to: 0 }
end
