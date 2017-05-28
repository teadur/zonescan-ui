require 'test_helper'

class DomainTest < ActiveSupport::TestCase
  fixtures  :domains

  test "domain is not valid without a unique name" do
    domain = Domain.new(name: domains(:one).name,
                        lastrun: '1')
    assert domain.invalid?
    assert_equal ["has already been taken"], domain.errors[:name]

  end
end
