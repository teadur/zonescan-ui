class Result < ApplicationRecord
  # belongs_to :domain
  # belongs_to :scan
  has_one :domain
  has_one :scan
  validates :name, :runid, :status, :time, :http_code, :https, :dns, presence: true

  def self.add(item=nil)
    result = Result.new(item)
    # puts "self add"
    # pp item
    # result[:dns] = item[:dns]

    # puts "objekt:"
    # pp result
    result.save!
  end


end
