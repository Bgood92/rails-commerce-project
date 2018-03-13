class Genre < ApplicationRecord
  validate :name, presence: true
end
