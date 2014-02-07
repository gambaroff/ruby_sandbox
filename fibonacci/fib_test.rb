require 'test/unit'
require_relative 'fib_to_1000'

class TestCompoundInterest < Test::Unit::TestCase
  def fib_test
    assert_equal("1 1 2 4 8 16 32 64 128 256 512", fib_up_to(1000) {|f| "#{f} "} )
  end
end
