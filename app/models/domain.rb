class Domain < ApplicationRecord
  # has_many :result
  validates :name, presence: true
  validates :name, uniqueness: true
end
