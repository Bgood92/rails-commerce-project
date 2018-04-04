class User < ApplicationRecord
  belongs_to :province
  # has_many :orders, dependent: :nullify

  # attr_accessor :password

  before_save { self.email = email.downcase }

  validates :first_name, :last_name, presence: true
  validates :email, presence: true, format: { with: /\A.+@.+\Z/i }, uniqueness: { case_sensitive: false }
  validates :password, presence: true, confirmation: true, length: { within: 6..40 }

  has_secure_password

  # Returns the hash digest of the given string.
  def self.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

end
