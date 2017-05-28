class Result < ApplicationRecord
  has_many :domain
  belongs_to :scan
  # validates :name, :runid, :status, presence: true

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
