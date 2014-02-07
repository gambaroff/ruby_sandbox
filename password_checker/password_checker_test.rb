require_relative 'password_check'
require 'test/unit'

class TestPasswordsValid < Test::Unit::TestCase
  def testPasswordNotEmpty
    assert(!is_valid?(""), "empty should not match")
  end
  def testPasswordMoreThanOneType
     assert(!is_valid?("ABASDABASDBASDBA"), "ABASDABASDBASDBA should not match because it has only uppercase")
    assert(!is_valid?("1234123412341234"), "1234123412341234 should not match because it has only numbers")
    assert(!is_valid?("asbcasdfa12341234"), "asbcasdfa12341234 should not match because it has only lower letters and numbers.  we need uppers, lowers, numbers, and symbols, at least one per group")
  end
  def testPasswordNotLongEnough
    assert(!is_valid?("aA1$"), "aA1$ should not match because it needs at least 7 characters")
  end
  def testPasswordIsValid
    assert(is_valid?("asbcASBC1234@*^&"), "asbcASBC1234 should match because it has at least 1 lower, 1 upper, 1 number, 1 symbol and is 7 or more in length")
  end
end

