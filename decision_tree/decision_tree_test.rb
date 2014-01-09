require_relative 'decision_tree_methods'
require 'test/unit'

class TestDecisionTree < Test::Unit::TestCase
  def test_compare_method
    assert_equal("All 3 variables are greater then 0.",   calculate1(1,1,2))
    assert_equal("2 variables are greater then 0.",       calculate1(1,1,-2))
    assert_equal("2 variables are greater then 0.",       calculate1(1,-1,2))
    assert_equal("Only one variable is greater then 0.",  calculate1(1,-1,-2))
    assert_equal("2 variables are greater then 0.",       calculate1(-1,1,2))
    assert_equal("Only one variable is greater then 0.",  calculate1(-1,1,-2))
    assert_equal("Only one variable is greater then 0.",  calculate1(-1,-1,2))
    assert_equal("All 3 variables are less then 0.",      calculate1(-1,-1,-2))
  end
end
