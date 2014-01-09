require_relative 'linear_eq_methods'
require 'test/unit'

class TestLinearEq < Test::Unit::TestCase
  def testIdenticalInf
    assert_equal("You have 2 lines that are identical and infinite number of solutions.", calculate1(1,1,2,2))
    assert_equal("You have 2 lines that are parallel and will NEVER EVER intersect in Euclidean geometry, hence no solutions.", calculate1(1,1,2,3))
    x = (4 - 3) / (1 - 2)
    y = 1 * x + 3 
    assert_equal("Your lines will intersect in the point of (#{x}, #{y})", calculate1(1,2,3,4))                                                                    
  end
end

