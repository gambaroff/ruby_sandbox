require 'minitest/autorun'
require_relative 'fib_to_1000'

class TestCompoundInterest < Minitest::Test

  def test_that_fib
    assert_equal [2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233], fib_up_to(100) {|f| "#{f} "}
  end
end