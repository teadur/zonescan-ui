class Result < ApplicationRecord
  # belongs_to :domain
  belongs_to :scan
  validates :name, :runid, :status, presence: true

end
