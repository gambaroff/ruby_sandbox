require 'test/unit'
require_relative 'calc'

class TestCompoundInterest < Test::Unit::TestCase
  def test_calc
    assert_equal(161.0510000000001, calc_compound(100.0,10.0,5.0))
  end
end
