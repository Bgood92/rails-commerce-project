class User < ApplicationRecord
  belongs_to :province
  has_many :orders, dependent: :nullify
  validates :first_name, :last_name, :email, :password, presence: true
  validates_format_of :email, with: /\A.+@.+\Z/i
end
