class Result < ApplicationRecord
  # belongs_to :domain
  # belongs_to :scan
  has_one :domain
  has_one :scan
  validates :name, :runid, :status, presence: true

  def self.add(item=nil)
    result = Result.new(item)
    puts "self add"
    pp item
    pp result
    result.save!
    result.errors.full_messages
    result.errors
  end


end
