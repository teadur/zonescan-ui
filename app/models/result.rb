class Result < ApplicationRecord
  validates :name, :runid, :status, presence: true
end
