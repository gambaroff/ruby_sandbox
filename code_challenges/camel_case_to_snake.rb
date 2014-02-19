#codewars
#Complete the function/method so that it takes CamelCase string and returns the string in snake_case notation.
#Lowercase characters can be numbers. If method gets number, it should return string.


def to_underscore(string)
 string.to_s.gsub(/([A-Z][A-Z0-9]?)/) { '_' + $1.downcase }.gsub(/^_|\s_/, ' ').gsub(/^\s/, '')
end

Test.assert_equals(to_underscore("TestController"), "test_controller")
Test.assert_equals(to_underscore("MoviesAndBooks"), "movies_and_books")
Test.assert_equals(to_underscore("App7Test"), "app7_test")
Test.assert_equals(to_underscore("My3CodeIs4TimesBetter"), "my3_code_is4_times_better")



#great but not mine
def to_underscore(string)
  string.to_s.split(/(?=[A-Z])/).join('_').downcase
end
#great but not mine
def to_underscore(string)
  # TODO: complete
  string.to_s.gsub(/(.)([A-Z])/, '\1_\2').downcase
end
#great but not mine
def to_underscore(string)
  string = string.to_s
  string.split(/(?=[A-Z])/).map(&:downcase).join('_')
end
#great but not mine
def to_underscore(string)
  string.to_s.scan(/[A-Z]?[a-z\d]+/).map {|x| x.downcase }.join('_')
end
#great but not mine
def to_underscore(string)
  string.to_s.chars.slice_before(/[A-Z]/).map { |word| word.join.downcase }.join('_')
end
#great but not mine
def to_underscore(string)
  string.to_s.gsub(/([A-Z])/) { "_#{$1.downcase}" }.gsub(/^_/,'')
end